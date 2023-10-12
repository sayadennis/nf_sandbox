# Nextflow Sandbox Repository

Playing with Nextflow!

## Hello World

The first test is a simple "Hello World" example. Workflow is in `code/helloworld.nf`, which is submitted to the HPC scheduler (slurm) with `code/helloworld.sh`.

## Test 1: downloading and playing with TCGA data

Query in the "Exploration" page of GDC Data Portal:

```
"Primary Site" IS "breast" AND "Program Name" IS "TCGA" AND "Project Id" IS "TCGA-BRCA" AND "Sample Type" IN ("blood derived normal", "solid tissue normal")
```

After I ran the above query, I clicked on the "View in Repository" button on the right, and ran the below query (the `set_id` will be different for a different query):

```
cases.case_id in ["set_id:RbYBH4sBHGueRnMiPZ8H"] AND cases.samples.sample_type in ["solid tissue normal","blood derived normal"] and files.data_format in [vcf, txt, "bcr xml", maf]
```

Downloaded the manifest and saved to `/projects/b1131/saya/nf_sandbox/gdc_manifest.2023-10-11.txt`.

## Test 2: Running the first alignment step of BBCAR project

Run the alignment step of `bbcar` repo with Nextflow.
 
