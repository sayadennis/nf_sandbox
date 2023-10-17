params.project_dir = "/projects/b1131/saya/bbcar"
// params.v5_interval_samples = "/projects/b1131/saya/bbcar/data/sample_ids_uchicago.txt"

process align {

  output:
    stdout

  script:
  """
  echo "\nTissue samples:"
  cat "${params.project_dir}/data/sample_ids_all_tissue.txt"
  echo "\nGermline samples:"
  cat "${params.project_dir}/data/sample_ids_all_germline.txt"
  """
}

workflow {
  align | view
}

workflow.onComplete {

    def msg = """\
        Pipeline execution summary 
        --------------------------- 
        Completed at: ${workflow.complete}
        Duration    : ${workflow.duration}
        Success     : ${workflow.success}
        workDir     : ${workflow.workDir}
        exit status : ${workflow.exitStatus}
        """
        .stripIndent()

    sendMail(to: "sayarenedennis@northwestern.edu", subject: "nextflow-bbcar-job", body: msg)
}
