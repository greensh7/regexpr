[0KRunning with gitlab-runner 15.2.1 (32fc1585)[0;m
[0K  on u8-srv-glr025-docker rsUZMzQD[0;m
section_start:1693322585:resolve_secrets
[0K[0K[36;1mResolving secrets[0;m[0;m
section_end:1693322585:resolve_secrets
[0Ksection_start:1693322585:prepare_executor
[0K[0K[36;1mPreparing the "docker" executor[0;m[0;m
[0KUsing Docker executor with image ahcl0uv-gitlab1.hcl.lmco.com:5050/docker/rhel_8/terraform:latest ...[0;m
[0KAuthenticating with credentials from job payload (GitLab Registry)[0;m
[0KPulling docker image ahcl0uv-gitlab1.hcl.lmco.com:5050/docker/rhel_8/terraform:latest ...[0;m
[0KUsing docker image sha256:253cfc5c674f3dde95a7a9214a44fad1d149a91cbf17bb3494b518338bd6d707 for ahcl0uv-gitlab1.hcl.lmco.com:5050/docker/rhel_8/terraform:latest with digest ahcl0uv-gitlab1.hcl.lmco.com:5050/docker/rhel_8/terraform@sha256:1079acd6d88e421e6eda19b5fd342ee9418a3189e39822594f16e3f03f30aaba ...[0;m
section_end:1693322587:prepare_executor
[0Ksection_start:1693322587:prepare_script
[0K[0K[36;1mPreparing environment[0;m[0;m
Running on runner-rsuzmzqd-project-385-concurrent-0 via u8-srv-glr025...
section_end:1693322588:prepare_script
[0Ksection_start:1693322588:get_sources
[0K[0K[36;1mGetting source from Git repository[0;m[0;m
[32;1mFetching changes with git depth set to 50...[0;m
Reinitialized existing Git repository in /builds/terraform/vm-baseline-as-code/.git/
[32;1mChecking out d6d2ec14 as production...[0;m
Removing production/.terraform.lock.hcl
Removing production/.terraform/
Removing production/plan.cache
Removing providers/

[32;1mSkipping Git submodules setup[0;m
section_end:1693322590:get_sources
[0Ksection_start:1693322590:step_script
[0K[0K[36;1mExecuting "step_script" stage of the job script[0;m[0;m
[0KUsing docker image sha256:253cfc5c674f3dde95a7a9214a44fad1d149a91cbf17bb3494b518338bd6d707 for ahcl0uv-gitlab1.hcl.lmco.com:5050/docker/rhel_8/terraform:latest with digest ahcl0uv-gitlab1.hcl.lmco.com:5050/docker/rhel_8/terraform@sha256:1079acd6d88e421e6eda19b5fd342ee9418a3189e39822594f16e3f03f30aaba ...[0;m
[32;1m$ mkdir -p providers/registry.terraform.io/hashicorp/vsphere/2.3.1/linux_amd64[0;m
[32;1m$ cd providers/registry.terraform.io/hashicorp/vsphere/2.3.1/linux_amd64[0;m
[32;1m$ curl -O https://ahcl0uv-8arti01:8443/artifactory/jedi-raw/hashicorp/vsphere/terraform-provider-vsphere_v2.3.1_x5[0;m
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed

  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
100 26.8M  100 26.8M    0     0   176M      0 --:--:-- --:--:-- --:--:--  177M
[32;1m$ chmod 700 terraform-provider-vsphere_v2.3.1_x5[0;m
[32;1m$ echo -e "provider_installation {\n  filesystem_mirror {\n    path = \"$CI_PROJECT_DIR/providers\"\n  }\n}" > /root/.terraformrc[0;m
[32;1m$ cd $CI_PROJECT_DIR[0;m
[32;1m$ echo $TF_VAR_VSPHERE_PASSWORD[0;m
[MASKED]
[32;1m$ cd ${CI_ENVIRONMENT_NAME}[0;m
[32;1m$ gitlab-terraform plan -var-file $VAR_FILE[0;m

[0m[1mInitializing the backend...[0m
[0m[32m
Successfully configured the backend "http"! Terraform will automatically
use this backend unless the backend configuration changes.[0m

[0m[1mInitializing provider plugins...[0m
- Finding hashicorp/vsphere versions matching "2.3.1"...
- Installing hashicorp/vsphere v2.3.1...
- Installed hashicorp/vsphere v2.3.1 (unauthenticated)

Terraform has created a lock file [1m.terraform.lock.hcl[0m to record the provider
selections it made above. Include this file in your version control repository
so that Terraform can guarantee to make the same selections by default when
you run "terraform init" in the future.[0m

[33m[33m╷[0m[0m
[33m│[0m [0m[1m[33mWarning: [0m[0m[1mIncomplete lock file information for providers[0m
[33m│[0m [0m
[33m│[0m [0m[0mDue to your customized provider installation methods, Terraform was forced
[33m│[0m [0mto calculate lock file checksums locally for the following providers:
[33m│[0m [0m  - hashicorp/vsphere
[33m│[0m [0m
[33m│[0m [0mThe current .terraform.lock.hcl file only includes checksums for
[33m│[0m [0mlinux_amd64, so Terraform running on another platform will fail to install
[33m│[0m [0mthese providers.
[33m│[0m [0m
[33m│[0m [0mTo calculate additional checksums for another platform, run:
[33m│[0m [0m  terraform providers lock -platform=linux_amd64
[33m│[0m [0m(where linux_amd64 is the platform to generate)
[33m╵[0m[0m
[0m[0m
[0m[1m[32mTerraform has been successfully initialized![0m[32m[0m
[0m[1mdata.vsphere_datacenter.dc: Reading...[0m[0m
[0m[1mvsphere_tag_category.purpose-category: Refreshing state... [id=urn:vmomi:InventoryServiceCategory:568e8dff-3166-471f-98f8-674f2a7376ca:GLOBAL][0m
[0m[1mvsphere_tag_category.os-category: Refreshing state... [id=urn:vmomi:InventoryServiceCategory:dd08667d-f71f-49a8-877b-3c6b1c85cdcf:GLOBAL][0m
[0m[1mvsphere_tag_category.product-category: Refreshing state... [id=urn:vmomi:InventoryServiceCategory:2cee0cea-1dc9-4a74-91ed-1c4205e42083:GLOBAL][0m
[0m[1mvsphere_tag_category.os-version: Refreshing state... [id=urn:vmomi:InventoryServiceCategory:fc4d21b9-5667-4c47-9d82-12a59c3558d0:GLOBAL][0m
[0m[1mdata.vsphere_datacenter.dc: Read complete after 0s [id=datacenter-2][0m
[0m[1mdata.vsphere_virtual_machine.dev_template_rhel7: Reading...[0m[0m
[0m[1mdata.vsphere_network.srv_network: Reading...[0m[0m
[0m[1mdata.vsphere_compute_cluster.cluster: Reading...[0m[0m
[0m[1mdata.vsphere_virtual_machine.dev_template: Reading...[0m[0m
[0m[1mdata.vsphere_virtual_machine.srv_template: Reading...[0m[0m
[0m[1mdata.vsphere_virtual_machine.multi_template: Reading...[0m[0m
[0m[1mdata.vsphere_network.srv_network: Read complete after 0s [id=dvportgroup-29][0m
[0m[1mdata.vsphere_network.dev_network: Reading...[0m[0m
[0m[1mdata.vsphere_virtual_machine.srv_template: Read complete after 0s [id=420ade79-f8f9-f680-9e8b-cfd2bbf49eca][0m
[0m[1mdata.vsphere_virtual_machine.template_server_glr: Reading...[0m[0m
[0m[1mdata.vsphere_virtual_machine.dev_template: Read complete after 0s [id=420aeedd-9fca-2936-fbcb-b49ec2e89171][0m
[0m[1mdata.vsphere_datastore.datastore: Reading...[0m[0m
[0m[1mdata.vsphere_compute_cluster.cluster: Read complete after 0s [id=domain-c44521][0m
[0m[1mdata.vsphere_network.dev_network: Read complete after 0s [id=dvportgroup-44946][0m
[0m[1mdata.vsphere_virtual_machine.multi_template: Read complete after 0s [id=420a325e-0a48-6841-d493-4240dc2b9a3e][0m
[0m[1mdata.vsphere_virtual_machine.dev_template_rhel7: Read complete after 0s [id=420a83fd-aad7-9d66-a060-8ad1f24822e0][0m
[0m[1mdata.vsphere_datastore.datastore: Read complete after 0s [id=datastore-44551][0m
[0m[1mdata.vsphere_virtual_machine.template_server_glr: Read complete after 0s [id=420a78e6-9495-5624-5ccc-f1d0877147d4][0m
[0m[1mvsphere_tag.os-version-tags["10"]: Refreshing state... [id=urn:vmomi:InventoryServiceTag:50ae6d11-1c18-4710-bd1c-197408c6f9f2:GLOBAL][0m
[0m[1mvsphere_tag.os-version-tags["7"]: Refreshing state... [id=urn:vmomi:InventoryServiceTag:5692c05b-3c96-4be8-9ad0-608f803ae9e7:GLOBAL][0m
[0m[1mvsphere_tag.os-version-tags["6"]: Refreshing state... [id=urn:vmomi:InventoryServiceTag:d9a071e9-5c4d-4e24-9cec-74f81727e4fa:GLOBAL][0m
[0m[1mvsphere_tag.os-version-tags["8"]: Refreshing state... [id=urn:vmomi:InventoryServiceTag:dab38fe6-d558-463a-9e4e-77672ee9c014:GLOBAL][0m
[0m[1mvsphere_tag.os-tags["rhel"]: Refreshing state... [id=urn:vmomi:InventoryServiceTag:a00d9809-5c0c-436a-89f5-4aeb2594df19:GLOBAL][0m
[0m[1mvsphere_tag.os-tags["windows"]: Refreshing state... [id=urn:vmomi:InventoryServiceTag:eb2980b0-a952-4506-947f-08b3dbaa0c79:GLOBAL][0m
[0m[1mvsphere_tag.purpose-tags["server"]: Refreshing state... [id=urn:vmomi:InventoryServiceTag:2714a7bb-92fe-4b19-8d50-5605f7ec6570:GLOBAL][0m
[0m[1mvsphere_tag.purpose-tags["dev"]: Refreshing state... [id=urn:vmomi:InventoryServiceTag:f21e0e80-72cd-4f36-8ebf-42d008362bef:GLOBAL][0m
[0m[1mvsphere_tag.purpose-tags["test"]: Refreshing state... [id=urn:vmomi:InventoryServiceTag:83a73fc7-224a-461a-8083-66c5a8d43656:GLOBAL][0m
[0m[1mvsphere_tag.purpose-tags["run"]: Refreshing state... [id=urn:vmomi:InventoryServiceTag:d32d016a-d616-44a1-b098-31865e9ec0c2:GLOBAL][0m
[0m[1mvsphere_tag.product-tags["prototype"]: Refreshing state... [id=urn:vmomi:InventoryServiceTag:327dc4b4-c044-44a2-85e8-d47d58137a82:GLOBAL][0m
[0m[1mvsphere_tag.product-tags["2.X"]: Refreshing state... [id=urn:vmomi:InventoryServiceTag:7d472c8b-9b2c-49e1-95d1-7b383aca8067:GLOBAL][0m
[0m[1mvsphere_tag.product-tags["infrastructure"]: Refreshing state... [id=urn:vmomi:InventoryServiceTag:13df34ae-91d3-411e-a401-64e3a16d0a6a:GLOBAL][0m
[0m[1mvsphere_tag.product-tags["1.X"]: Refreshing state... [id=urn:vmomi:InventoryServiceTag:90f4fa59-6c21-4ac7-a3b8-8debcfa111af:GLOBAL][0m
[0m[1mvsphere_virtual_machine.vm1["u8-srv-bzr001"]: Refreshing state... [id=420a1db5-c141-279c-5f86-6e36a4d3d92e][0m
[0m[1mvsphere_virtual_machine.vm_multi["u8-o2x-dev500"]: Refreshing state... [id=420a8284-9bc9-095e-3a46-c569d37fb4bd][0m
[0m[1mvsphere_virtual_machine.vm1["u8-srv-tls001"]: Refreshing state... [id=420ac6fa-e813-4302-c6b2-144fdd55f34a][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-gpu021"]: Refreshing state... [id=420a66fd-c9cd-6b3e-c13a-046214268c29][0m
[0m[1mvsphere_virtual_machine.vm1["u8-srv-aap002"]: Refreshing state... [id=420ab84e-c058-0de7-055c-d4698b2ef708][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev140"]: Refreshing state... [id=420a20a8-3210-faf3-e718-3fda04aa5b43][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev228"]: Refreshing state... [id=420a4fef-5164-7f08-02cd-742d2babd5b9][0m
[0m[1mvsphere_virtual_machine.vm1["u8-srv-aap001"]: Refreshing state... [id=420a886b-1b47-44ce-f4e3-5152ffd58c9a][0m
[0m[1mvsphere_virtual_machine.vm1["u8-srv-aqu001"]: Refreshing state... [id=420ac799-cf6e-d32d-9bf2-dfef3e0ac7b1][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev202"]: Refreshing state... [id=420a1655-2d20-be9d-6252-8e12580b0182][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev225"]: Refreshing state... [id=420a6604-e79e-74a2-d552-4d1a1ed15c99][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev241"]: Refreshing state... [id=420a56d2-80ea-843f-a43a-ef776c59113f][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev187"]: Refreshing state... [id=420ab780-ce04-d3f1-56f7-78f41f1487bc][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev182"]: Refreshing state... [id=420affc7-6b3e-40a6-d777-3b0fc4246ac2][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev204"]: Refreshing state... [id=420a86a1-554f-7f9f-0e80-5aee411a6899][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev172"]: Refreshing state... [id=420a0ca1-2f50-e2a9-c505-f27ad157ac42][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev169"]: Refreshing state... [id=420ae6c1-06f7-ba19-8dc0-d663efd8d6a5][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-gpu030"]: Refreshing state... [id=420a7f24-741e-67cb-fe3d-fe22edd03223][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev160"]: Refreshing state... [id=420a9664-6579-a8f1-a480-c6f267f16563][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-run017"]: Refreshing state... [id=420a5479-79b9-ea23-8cfa-c13a6a8d2f33][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-run501"]: Refreshing state... [id=420aed05-86b2-490e-1c40-43bc35f51e3a][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev224"]: Refreshing state... [id=420aeb36-0fa2-e983-63a0-1677e489b1db][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-tst008"]: Refreshing state... [id=420ad9a1-4933-167a-5ffa-b0bc45c2f6cb][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-tst015"]: Refreshing state... [id=420a7e46-1f02-c226-44b9-8728e5890b74][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev217"]: Refreshing state... [id=420a6ece-5ca8-732a-41bd-59ee7e4f8d48][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-run503"]: Refreshing state... [id=420a6cf7-8c5b-4404-5291-216f8a5d5475][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-run015"]: Refreshing state... [id=420a10b8-4a78-4412-c7e5-930acfa9652e][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-run012"]: Refreshing state... [id=420a2407-3aef-c39a-2501-0d08bba11950][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-run028"]: Refreshing state... [id=420a2d44-9d44-a498-fd0f-8088ed9e2200][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev234"]: Refreshing state... [id=420ad95c-6dfb-538b-5cfc-1ac8236c803b][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-gpu019"]: Refreshing state... [id=420a7868-7405-9267-73ed-67e7026352f1][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev221"]: Refreshing state... [id=420ad69f-5d1d-5ba9-b726-54126acdef6e][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-gpu027"]: Refreshing state... [id=420a58f7-8111-dec8-d7be-8afdc6290053][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev167"]: Refreshing state... [id=420a151f-918c-cb94-f852-90902df27888][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev183"]: Refreshing state... [id=420a0f3c-b3a2-85b5-8814-7258d6e669c8][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev240"]: Refreshing state... [id=420aef66-cef8-2063-8413-1b047c58f94c][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev206"]: Refreshing state... [id=420abe1a-f3cc-1f06-0091-e3eee414e764][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-gpu036"]: Refreshing state... [id=420a044a-35e1-9dc5-fec7-af929c16ae8e][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev192"]: Refreshing state... [id=420a534e-7059-5cda-723e-850c45bb50a3][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-gpu025"]: Refreshing state... [id=420a5f04-adf2-4ac9-1ead-e1352219b43b][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev229"]: Refreshing state... [id=420a115a-7d94-6e18-15f0-ea169246be50][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-run025"]: Refreshing state... [id=420a9ead-e947-0644-377c-8b979661942c][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev238"]: Refreshing state... [id=420a1a1a-3b41-560c-c144-7791df2da22f][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-gpu014"]: Refreshing state... [id=420aac24-52e9-c7cc-2a99-d6d84d23709e][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-gpu024"]: Refreshing state... [id=420a5077-f07d-09b5-2ad2-ee815fe45d7f][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev242"]: Refreshing state... [id=420a3001-3eed-1162-7e7e-09677bd1faa4][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev230"]: Refreshing state... [id=420a9899-66a5-eddd-98da-cba84937c69f][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-run506"]: Refreshing state... [id=420aaa69-27cd-83ff-ccf8-35dbc017c832][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev243"]: Refreshing state... [id=420a5d8a-158b-0f6a-e819-e3472ef62471][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev244"]: Refreshing state... [id=420abb68-04df-b8a6-c05b-dd770c0a8a74][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev248"]: Refreshing state... [id=420a77fe-7d31-f088-2338-90aa8b164852][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev246"]: Refreshing state... [id=420acb8a-861a-21bc-d05e-dbd18f12dddc][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev207"]: Refreshing state... [id=420a6420-635e-0917-6201-5aafe71d79ac][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-gpu015"]: Refreshing state... [id=420a21ae-c480-0d0b-1124-217c31e4f58a][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev181"]: Refreshing state... [id=420a301f-6090-36e3-b825-f64c6eefb2ee][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev247"]: Refreshing state... [id=420a550b-93bb-8c10-3b39-c7e576e24f1c][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev219"]: Refreshing state... [id=420ab58b-0876-283b-8625-b862683d4c5c][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-gpu023"]: Refreshing state... [id=420ada95-9ceb-4203-9f78-0a44033915b4][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev195"]: Refreshing state... [id=420a2f53-139b-57d8-f294-1ae80c4187e4][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev148"]: Refreshing state... [id=420a92a3-d49b-5238-1e5a-7f99894a2046][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev196"]: Refreshing state... [id=420a76ab-2024-8383-42b5-ec742e44b2aa][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev190"]: Refreshing state... [id=420a2a49-c506-208a-b306-7a67fd119968][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-tst012"]: Refreshing state... [id=420a06a8-6036-43a4-ca36-fee18f224f86][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev236"]: Refreshing state... [id=420af363-20a0-1b0b-0954-60b9030e8e1a][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev185"]: Refreshing state... [id=420abeea-6dda-6606-05aa-0d4d69533c11][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev154"]: Refreshing state... [id=420ab92d-0c9a-cfd7-408f-6b3a91199953][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-gpu029"]: Refreshing state... [id=420af31f-b08a-89d2-0017-dbe317cbedc6][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev232"]: Refreshing state... [id=420a3300-491d-7f9b-18e0-13f0b4b5c86b][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev161"]: Refreshing state... [id=420ac859-56a5-ac40-3e29-634419d5f009][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev231"]: Refreshing state... [id=420a70a0-cfc1-2033-5820-c3edff4edd27][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev213"]: Refreshing state... [id=420aa2ce-f25c-4235-bac2-4bdd2f78a3ea][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev143"]: Refreshing state... [id=420aa14f-c625-96d5-e5a8-48e96ae5b2c5][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-gpu032"]: Refreshing state... [id=420ab7f7-7a98-5530-1bbc-07e6e2fe711a][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev165"]: Refreshing state... [id=420ae836-0a8a-547d-41ae-18677ad9eaf4][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev226"]: Refreshing state... [id=420a4fc8-48cc-f38b-a7f5-e261435ac32b][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev212"]: Refreshing state... [id=420ae0a0-5091-9da6-f7ab-4a0481cf8a2f][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-tst011"]: Refreshing state... [id=420a52b9-aa1d-aaa6-4cb9-92bb4437055c][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev198"]: Refreshing state... [id=420a5a26-3a9a-8adc-c3d3-5b7f4b5c049d][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev134"]: Refreshing state... [id=420a227e-a469-79b0-fcca-4f55f63742aa][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-gpu018"]: Refreshing state... [id=420aa723-2162-3a18-4f40-504c2cc6cbc2][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev201"]: Refreshing state... [id=420ae5f6-9830-e768-8277-5b6f2b643bcc][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-tst006"]: Refreshing state... [id=420a61b3-1bb4-6b12-65ba-3760cc1d25ff][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-run511"]: Refreshing state... [id=420a529d-b295-ec96-4905-16941344a948][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-run505"]: Refreshing state... [id=420a7b13-72ae-c8a6-beb6-780b4a3258ca][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-run022"]: Refreshing state... [id=420aedbb-7ab4-0bfe-18d1-e2f64cca509c][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-gpu020"]: Refreshing state... [id=420a2e92-df37-2497-c1e3-fe48eb1c5962][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev136"]: Refreshing state... [id=420a0ba4-d46e-7d64-abd7-ed9b2a7037e5][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-run504"]: Refreshing state... [id=420aeed5-86fa-7d5d-a0f5-1dbb77a4ec62][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-tst013"]: Refreshing state... [id=420a26fd-22f5-eb4a-546e-9d82b21ff4b9][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-run029"]: Refreshing state... [id=420a0ff6-fdeb-f45d-b712-9a957bc43035][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-run030"]: Refreshing state... [id=420aebff-ea2b-71a9-2530-dcd6fb5ccded][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-gpu031"]: Refreshing state... [id=420a6843-157f-472e-0dcd-72ef9252e492][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev149"]: Refreshing state... [id=420af373-587d-daa3-e363-3d1bfdc824a5][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev141"]: Refreshing state... [id=420a1be3-e293-49a4-e064-f2ff295f308a][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-run513"]: Refreshing state... [id=420a3cf0-7aea-9f70-0bc8-89d0c2515832][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev197"]: Refreshing state... [id=420a874d-6ee3-8673-de10-5e286d2f1670][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev150"]: Refreshing state... [id=420a36c7-1aad-be21-4ee6-5d440e7cff21][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev145"]: Refreshing state... [id=420afaa0-a15e-082a-a62c-af32f4c984e2][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-gpu033"]: Refreshing state... [id=420ab239-360b-002f-f849-ba2af30c0c31][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-tst014"]: Refreshing state... [id=420a5128-5234-8cb1-eb7e-dc35124cb57b][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-run502"]: Refreshing state... [id=420ab8df-e260-b169-6a54-825fad7aad51][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-gpu035"]: Refreshing state... [id=420a3d5c-9801-7c31-eabd-b4c20d9b98fa][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev166"]: Refreshing state... [id=420a7a95-452d-4966-e7f6-76a9c8798bb6][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-run018"]: Refreshing state... [id=420a87fd-a196-45ed-b1f7-70d654acf994][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev162"]: Refreshing state... [id=420a5c1a-9044-17dd-a239-b2dffb2f746f][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-tst010"]: Refreshing state... [id=420a8935-4dfa-7dc7-b2f7-5aa0108d7538][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev179"]: Refreshing state... [id=420ab826-3613-bf03-f361-2aefd62bf73c][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-gpu034"]: Refreshing state... [id=420a51a7-a883-e905-85e6-2c3f9b1adac7][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev158"]: Refreshing state... [id=420aacd3-005e-7b74-2430-de230ace5aa7][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev127"]: Refreshing state... [id=420a3f09-7523-3b42-7ef5-94a7bbe4a30a][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev203"]: Refreshing state... [id=420aa457-4fcc-6b39-2603-f49b0caa4178][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-gpu013"]: Refreshing state... [id=420a7819-ab7a-f402-31bb-04919509676b][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev237"]: Refreshing state... [id=420acace-da18-4f3e-8127-763704bc0415][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev233"]: Refreshing state... [id=420ac8ec-d946-8bfe-2c05-a4affce8d36d][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev211"]: Refreshing state... [id=420a3284-755f-7077-c938-e4b69dc767ec][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev174"]: Refreshing state... [id=420afb93-c829-081e-e755-764defa43b01][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev178"]: Refreshing state... [id=420a8a28-868c-1023-4bde-8a3dd97d9b78][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev171"]: Refreshing state... [id=420abd99-5d53-356e-6628-d42007cbfb55][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev216"]: Refreshing state... [id=420a825d-14be-dc71-7505-8bf77ec85e85][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev128"]: Refreshing state... [id=420a1c63-9f82-4fff-53d1-a1d71ac84d60][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev142"]: Refreshing state... [id=420a99e0-73f4-0174-bc7d-4d24295913f1][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev137"]: Refreshing state... [id=420a5a0e-b498-8dda-3ac3-a4bda1bd5138][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev168"]: Refreshing state... [id=420a5504-1531-33a5-aeb4-d4fb30047775][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev184"]: Refreshing state... [id=420a4754-d62f-04c1-693f-84a06043aa8f][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-run026"]: Refreshing state... [id=420a6cc6-39c2-af8d-bbcd-56ecfb641260][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev133"]: Refreshing state... [id=420a0989-670a-451a-488d-a11ab0158197][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-run512"]: Refreshing state... [id=420a5fd8-04be-83f6-8f26-e1612e4ebcd0][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-run011"]: Refreshing state... [id=420a9d08-7f52-8e91-a96d-f74a4c5b51b9][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev132"]: Refreshing state... [id=420a7a9b-4f03-664f-d2e8-fea9fb6c8c97][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-run021"]: Refreshing state... [id=420af811-bec8-9230-8e95-5fda37f9fc1c][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev227"]: Refreshing state... [id=420a4973-a716-e030-d1a9-a73d48d7c01c][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev177"]: Refreshing state... [id=420ae72f-a6b4-e781-6121-722e92ede544][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev163"]: Refreshing state... [id=420ad928-9939-2c77-96b7-70c5e8083943][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev135"]: Refreshing state... [id=420af08c-3ab5-d131-c4ea-0ca8b6c38512][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-run027"]: Refreshing state... [id=420ab966-7c35-2900-d491-bc62831271ef][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev153"]: Refreshing state... [id=420aee39-9b0b-667e-b5e5-5f338d063feb][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev164"]: Refreshing state... [id=420a0d6d-ab7b-1474-6e39-6a68109435cc][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev191"]: Refreshing state... [id=420a796a-6991-7225-87b3-8b4ac9c6e92f][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-run024"]: Refreshing state... [id=420ab00b-47b4-b9c3-b5a2-1db0253907fb][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev175"]: Refreshing state... [id=420a1fdf-de65-a242-3b31-21f4807876a6][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-gpu028"]: Refreshing state... [id=420ac566-a3eb-6471-6a3f-d053ced06af7][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-run013"]: Refreshing state... [id=420a5ee9-186b-4b4e-e54d-8aeca0e18878][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev170"]: Refreshing state... [id=420a00d3-0d28-7cb3-aad4-ca49c43462fa][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev138"]: Refreshing state... [id=420a9af7-a7d3-1f59-80a1-20970d5a8a93][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-gpu016"]: Refreshing state... [id=420a5332-6f9d-52d8-417b-34a41b549b6f][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev245"]: Refreshing state... [id=420a935b-9b1b-b493-84f9-3d559d038a81][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev235"]: Refreshing state... [id=420a2d66-fbb9-84f5-cf32-9a3749bf38c7][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev130"]: Refreshing state... [id=420a99a7-ffa5-66e4-4600-12e7875e35b3][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-run023"]: Refreshing state... [id=420afc29-d285-33d4-931e-0a0a6dce2220][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev126"]: Refreshing state... [id=420a1c95-68c9-1864-d582-52770178860d][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev199"]: Refreshing state... [id=420aa640-ab46-b5a0-af07-3879beb0b5ff][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-tst009"]: Refreshing state... [id=420adf2d-ea9f-06cf-6ef4-95c7bc5e13fc][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev210"]: Refreshing state... [id=420a12f4-0d52-0b5c-8790-f5b7f8d77d17][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-run016"]: Refreshing state... [id=420ab2e4-d6bf-70af-ab8a-1906b434c949][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev200"]: Refreshing state... [id=420a4ecc-a019-a0ca-b2c4-04cffa06c84f][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev129"]: Refreshing state... [id=420aa74e-7fee-4dc1-8a47-e8900ea0a2f1][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev193"]: Refreshing state... [id=420a4e55-63f8-9f29-6d4c-a3133d0e6e2a][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-gpu026"]: Refreshing state... [id=420aeb0b-2cbf-9be1-123a-036e545ab89a][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-run014"]: Refreshing state... [id=420a987e-a2a7-6476-a175-372390031d97][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev151"]: Refreshing state... [id=420a1422-d0ee-5b48-206f-49a8e1ee6dfc][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-gpu017"]: Refreshing state... [id=420aa661-6043-bfbd-2892-b607442ca691][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev208"]: Refreshing state... [id=420ac2b7-55b4-c721-8c66-0d0efd14c8b6][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev249"]: Refreshing state... [id=420ae115-9fdd-a604-ee10-844e96d8f688][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev239"]: Refreshing state... [id=420a6700-83ce-05d2-588c-1b47266ec068][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev209"]: Refreshing state... [id=420a2fad-f06e-d7e5-e88a-fd2b17cf6f44][0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev220"]: Refreshing state... [id=420a8b76-802c-7a6b-92b8-1ba34652c2ef][0m
[0m[1mvsphere_virtual_machine.vm_server_glr["u8-srv-glr020"]: Refreshing state... [id=420a47d8-4d3a-ef3d-33fa-976a8b5a1212][0m
[0m[1mvsphere_virtual_machine.vm_server_glr["u8-srv-glr023"]: Refreshing state... [id=420a045c-08fa-3df8-5c01-d9a0856fefaa][0m
[0m[1mvsphere_virtual_machine.vm_server_glr["u8-srv-glr030"]: Refreshing state... [id=420a452b-8adb-64c5-a7d5-3344fc1f1530][0m
[0m[1mvsphere_virtual_machine.vm_server_glr["u8-srv-glr019"]: Refreshing state... [id=420a8bbe-ac8e-fa83-afc8-c657e17f5e9a][0m
[0m[1mvsphere_virtual_machine.vm_server_glr["u8-srv-glr021"]: Refreshing state... [id=420a0a0c-8b15-30c7-dc9d-e9f7011d7f57][0m
[0m[1mvsphere_virtual_machine.vm_server_glr["u8-srv-glr015"]: Refreshing state... [id=420aff4f-5239-eaeb-4005-729d5a4ae7bd][0m
[0m[1mvsphere_virtual_machine.vm_server_glr["u8-srv-glr012"]: Refreshing state... [id=420aefac-367a-03a9-586a-d08e04f21d46][0m
[0m[1mvsphere_virtual_machine.vm_server_glr["u8-srv-glr027"]: Refreshing state... [id=420a5d6f-fac8-e057-df22-cdc25a3a9285][0m
[0m[1mvsphere_virtual_machine.vm_server_glr["u8-srv-glr025"]: Refreshing state... [id=420a3ece-3feb-fc99-88c4-227edbe65d13][0m
[0m[1mvsphere_virtual_machine.vm_server_glr["u8-srv-glr022"]: Refreshing state... [id=420a0bc2-13a8-12da-1850-a330ca8c6024][0m
[0m[1mvsphere_virtual_machine.vm_server_glr["u8-srv-glr028"]: Refreshing state... [id=420a81ff-af3b-173c-d9ac-dcc79ff3752f][0m
[0m[1mvsphere_virtual_machine.vm_server_glr["u8-srv-glr016"]: Refreshing state... [id=420a23bf-01e9-106d-3552-2551598409aa][0m
[0m[1mvsphere_virtual_machine.vm_server_glr["u8-srv-glr024"]: Refreshing state... [id=420af068-ec48-7cdb-a9bc-83736bc02197][0m
[0m[1mvsphere_virtual_machine.vm_server_glr["u8-srv-glr013"]: Refreshing state... [id=420a51b2-4897-c290-a86d-95ac639b6e7a][0m
[0m[1mvsphere_virtual_machine.vm_server_glr["u8-srv-glr014"]: Refreshing state... [id=420a4d04-d7d9-951d-fdaa-3805daa25f3e][0m
[0m[1mvsphere_virtual_machine.vm_server_glr["u8-srv-glr026"]: Refreshing state... [id=420abb1c-f18a-9aaa-5a62-78a383312825][0m
[0m[1mvsphere_virtual_machine.vm_server_glr["u8-srv-glr018"]: Refreshing state... [id=420a9457-fe03-6c23-0ff6-61e91de62531][0m
[0m[1mvsphere_virtual_machine.vm_server_glr["u8-srv-glr011"]: Refreshing state... [id=420aaa63-dd7e-d97f-bbdf-5d9e3f8618f6][0m
[0m[1mvsphere_virtual_machine.vm_server_glr["u8-srv-glr029"]: Refreshing state... [id=420a46f1-adac-99cb-2aac-7c8cdac6c2be][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev025"]: Refreshing state... [id=420a796d-506d-b628-c470-c6686eb826fc][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev018"]: Refreshing state... [id=420a6189-a8f6-8ba8-abc8-df7af4e82270][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev049"]: Refreshing state... [id=420a80df-ea2b-499a-f016-862ab1ea9499][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev006"]: Refreshing state... [id=420a28ba-2e5b-82c8-b709-32f4be3c467f][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev052"]: Refreshing state... [id=420a8786-1e07-5d17-feab-27f99088684f][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev012"]: Refreshing state... [id=420aee6c-f6fb-4841-df03-3f13591b09f1][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev005"]: Refreshing state... [id=420aaa06-8494-f2bc-3417-0b531a2ace29][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev008"]: Refreshing state... [id=420af199-8ee7-bd52-cae2-d1bddaca7e00][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev028"]: Refreshing state... [id=420a5d7c-f1e4-d1a9-7119-2d1e2ca14445][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev061"]: Refreshing state... [id=420aebfd-966c-6d35-b407-aa8d50b21ba1][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev085"]: Refreshing state... [id=420a4b6e-2395-479c-fae0-bf93801305bb][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev065"]: Refreshing state... [id=420a84c8-6daa-4651-7ff8-5bd34892c26c][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev075"]: Refreshing state... [id=420ae729-c023-a1ae-4ada-17bf234934f3][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev062"]: Refreshing state... [id=420ae7d2-0b9a-0575-223d-d3de02728e2f][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev013"]: Refreshing state... [id=420a6d2a-a171-3c1f-7919-dc08beef5c34][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev097"]: Refreshing state... [id=420ab92b-f492-e364-31c9-9806c71dd5f4][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev086"]: Refreshing state... [id=420a18b4-2c3d-67ef-e631-1664a1b37237][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev043"]: Refreshing state... [id=420ade91-4a89-0aa1-1acc-92b41afa73cd][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev031"]: Refreshing state... [id=420a1c7c-d3c1-56cc-e395-4cc143a756d9][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev060"]: Refreshing state... [id=420aa202-4ace-09d3-55ef-d00cda0ff1f4][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev019"]: Refreshing state... [id=420af14a-55fd-9434-da48-9c474aebb9e1][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev023"]: Refreshing state... [id=420afba2-c073-12bd-f8ec-ef3ce2316a7f][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev016"]: Refreshing state... [id=420aa27a-2b31-28bd-a4fe-f6c770370d42][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev021"]: Refreshing state... [id=420a24d9-280b-2034-7139-d4fe901e9254][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev033"]: Refreshing state... [id=420a4a7b-5501-af35-7bec-ee045e0f3951][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev095"]: Refreshing state... [id=420a7d01-b2f0-6421-35e6-070d2879366c][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev064"]: Refreshing state... [id=420a7ae2-fd17-e77a-dc47-458348d35a22][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev040"]: Refreshing state... [id=420a76b3-0266-1178-d6ec-42fb4270d32c][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev059"]: Refreshing state... [id=420a1f2c-1d3a-79bc-bc08-620ad260cebc][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev069"]: Refreshing state... [id=420a7ad5-0e97-38e2-6a3b-ff1def4088eb][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev076"]: Refreshing state... [id=420aa809-2b29-e45d-fa0b-db595e18a465][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev089"]: Refreshing state... [id=420ab1da-4c47-4126-41fd-c56116d05501][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev030"]: Refreshing state... [id=420ad953-b0b2-6821-65a8-b22c7b9d215e][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev092"]: Refreshing state... [id=420a509d-80b0-0635-25e0-1ec36921e82b][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev094"]: Refreshing state... [id=420a6e62-7280-450a-b87c-202ac271a8e5][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev100"]: Refreshing state... [id=420aa6a7-2eee-b2c7-4f86-1113f1a37222][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev083"]: Refreshing state... [id=420aa8b2-2d27-1e02-833e-84fa18d06a94][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev047"]: Refreshing state... [id=420a5b62-ebf1-4693-87a7-4624f808444d][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev070"]: Refreshing state... [id=420a5489-0934-3077-9cbb-16ff2438c45e][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev058"]: Refreshing state... [id=420a9ed5-187b-1fae-f008-d28179113586][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev015"]: Refreshing state... [id=420ad923-c93e-087a-9208-662b11800cfa][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev068"]: Refreshing state... [id=420a9cfa-cbcd-a9e8-722f-c80f8a21d62a][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev080"]: Refreshing state... [id=420add78-3d88-15c7-7a0a-439c42e7b7cf][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev041"]: Refreshing state... [id=420ad305-c310-e0bd-bc85-4705fa07d485][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev082"]: Refreshing state... [id=420a32da-5f08-b3cd-7765-4aed4124508a][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev007"]: Refreshing state... [id=420ae8ac-c5d6-33b8-dbb5-9417f7c5de20][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev003"]: Refreshing state... [id=420a56b5-433b-02c6-ebcc-8ab8e01abf46][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev042"]: Refreshing state... [id=420acff6-a4af-33f0-a5d5-993f2b72e172][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev002"]: Refreshing state... [id=420aeae9-afdb-bd7d-1d39-b0637c8c5798][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev044"]: Refreshing state... [id=420aac17-8526-27b4-9d74-02479fef1e42][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev087"]: Refreshing state... [id=420a4d55-73e6-b961-f5dc-23a47373d3cf][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev010"]: Refreshing state... [id=420a017c-e07c-bbfc-76e5-039817de782b][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev051"]: Refreshing state... [id=420a499a-39ed-7083-0f67-067a58366edc][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev091"]: Refreshing state... [id=420a6e36-dc04-c62a-bac5-9d7cec7a8f4b][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev001"]: Refreshing state... [id=420aad41-d2df-0b31-0906-e248490502d4][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev026"]: Refreshing state... [id=420af911-dd48-f85e-a460-a77da1b9ad4b][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev063"]: Refreshing state... [id=420ab161-6000-52f9-df39-c205d624fab7][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev067"]: Refreshing state... [id=420a2ccb-5394-5dad-a437-b071b7c6adb8][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev054"]: Refreshing state... [id=420a6223-50ef-7ae6-1a38-c7c604256243][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev072"]: Refreshing state... [id=420a109a-6363-8e58-b60e-df5aa3f8b9fe][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev074"]: Refreshing state... [id=420ad53e-70ed-94d2-5470-41ce7b2740b8][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev046"]: Refreshing state... [id=420a6dff-8098-ea9b-0d8d-e62ee6d2694c][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev024"]: Refreshing state... [id=420a479c-c47a-f320-70e9-02dd50885d32][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev035"]: Refreshing state... [id=420a0ef0-6a02-2f4e-ff89-a3af9f055a57][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev036"]: Refreshing state... [id=420a8f1b-2181-9cc2-320b-5ddbea74f4ae][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev093"]: Refreshing state... [id=420a6b47-cb1f-8fb5-1107-2249bb564b92][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev014"]: Refreshing state... [id=420ab0d7-0d19-b460-8902-72bd4b5edf0c][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev078"]: Refreshing state... [id=420a0a1e-7691-00eb-3ede-019b144212ca][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev011"]: Refreshing state... [id=420aedb2-73fd-2b48-b3cd-a583ea3312c3][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev004"]: Refreshing state... [id=420a3857-cd06-a141-cbdd-d22bd06895f4][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev066"]: Refreshing state... [id=420a5843-653d-2d75-40d4-fcd1f2c3229e][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev055"]: Refreshing state... [id=420a9ea3-b433-1fb8-b9a4-49f1034ab6cf][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev029"]: Refreshing state... [id=420ad042-6613-25be-a7cd-9ef94297f724][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev098"]: Refreshing state... [id=420a988f-ce73-55e7-dfde-9f82c7237925][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev079"]: Refreshing state... [id=420aa554-291c-daba-fbb2-d837a10ca4bf][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev090"]: Refreshing state... [id=420a165e-9b2a-eb3b-ae77-3af9f9ea855e][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev099"]: Refreshing state... [id=420a8885-f108-fd85-8b57-f88346856c69][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev038"]: Refreshing state... [id=420afe90-6a59-9623-d10a-91d21e645e70][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev009"]: Refreshing state... [id=420a507d-b392-b2c1-9b47-7f7739c1e83b][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev032"]: Refreshing state... [id=420aea46-252d-d5df-acef-77523ab36dcf][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev048"]: Refreshing state... [id=420a7d1c-e027-bb9c-b085-c59019eabaf1][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev057"]: Refreshing state... [id=420aaa1c-ed6d-b311-cfb0-429108d46391][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev037"]: Refreshing state... [id=420a6aca-42a7-e19a-0051-b16905db12a6][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev077"]: Refreshing state... [id=420a648a-4b75-17f0-a983-ed2de1541fb4][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev056"]: Refreshing state... [id=420a6f96-7181-15e4-578e-cc2aa83a3ef1][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev071"]: Refreshing state... [id=420a5483-6fab-134b-b4d2-bac439d056c9][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev088"]: Refreshing state... [id=420a987c-9b9b-54ea-2c15-547088e72142][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev027"]: Refreshing state... [id=420ac159-9883-aa13-7712-ebd0e3bf4d94][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev022"]: Refreshing state... [id=420a8090-7f96-19c9-d048-77141edb3d37][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev081"]: Refreshing state... [id=420ad665-06e6-3e27-78d6-ca0a4e1ecc4c][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev020"]: Refreshing state... [id=420a83fc-2734-d017-a1b3-897bbb7fbf32][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev084"]: Refreshing state... [id=420a050c-e583-a504-4d2d-5ab5b01cf293][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev039"]: Refreshing state... [id=420a071f-92a0-4651-ef24-c51fcb66bbc6][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev073"]: Refreshing state... [id=420ae928-23ed-ba3c-777b-2d0f52cb4bc2][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev034"]: Refreshing state... [id=420a6830-bac3-a984-c645-1d38825aef9b][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev096"]: Refreshing state... [id=420a5d46-ab76-933b-9333-d99a4ebc015e][0m
[0m[1mvsphere_virtual_machine.vm_cycle1["u8-o2x-dev017"]: Refreshing state... [id=420a96b6-6f45-734c-1841-8c5f930f5b18][0m

Terraform used the selected providers to generate the following execution
plan. Resource actions are indicated with the following symbols:
  [32m+[0m create
  [33m~[0m update in-place
[0m
Terraform will perform the following actions:

[1m  # vsphere_virtual_machine.vm["u8-o2x-dev131"][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "vsphere_virtual_machine" "vm" {
      [32m+[0m [0m[1m[0mannotation[0m[0m                              = (known after apply)
      [32m+[0m [0m[1m[0mboot_retry_delay[0m[0m                        = 10000
      [32m+[0m [0m[1m[0mchange_version[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mcpu_limit[0m[0m                               = -1
      [32m+[0m [0m[1m[0mcpu_share_count[0m[0m                         = (known after apply)
      [32m+[0m [0m[1m[0mcpu_share_level[0m[0m                         = "normal"
      [32m+[0m [0m[1m[0mdatastore_id[0m[0m                            = "datastore-44551"
      [32m+[0m [0m[1m[0mdefault_ip_address[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mept_rvi_mode[0m[0m                            = "automatic"
      [32m+[0m [0m[1m[0mextra_config_reboot_required[0m[0m            = true
      [32m+[0m [0m[1m[0mfirmware[0m[0m                                = "bios"
      [32m+[0m [0m[1m[0mfolder[0m[0m                                  = "IAC"
      [32m+[0m [0m[1m[0mforce_power_off[0m[0m                         = true
      [32m+[0m [0m[1m[0mguest_id[0m[0m                                = "rhel8_64Guest"
      [32m+[0m [0m[1m[0mguest_ip_addresses[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mhardware_version[0m[0m                        = (known after apply)
      [32m+[0m [0m[1m[0mhost_system_id[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mhv_mode[0m[0m                                 = "hvAuto"
      [32m+[0m [0m[1m[0mid[0m[0m                                      = (known after apply)
      [32m+[0m [0m[1m[0mide_controller_count[0m[0m                    = 2
      [32m+[0m [0m[1m[0mimported[0m[0m                                = (known after apply)
      [32m+[0m [0m[1m[0mlatency_sensitivity[0m[0m                     = "normal"
      [32m+[0m [0m[1m[0mmemory[0m[0m                                  = 16384
      [32m+[0m [0m[1m[0mmemory_limit[0m[0m                            = -1
      [32m+[0m [0m[1m[0mmemory_share_count[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mmemory_share_level[0m[0m                      = "normal"
      [32m+[0m [0m[1m[0mmigrate_wait_timeout[0m[0m                    = 30
      [32m+[0m [0m[1m[0mmoid[0m[0m                                    = (known after apply)
      [32m+[0m [0m[1m[0mname[0m[0m                                    = "u8-o2x-dev131"
      [32m+[0m [0m[1m[0mnum_cores_per_socket[0m[0m                    = 1
      [32m+[0m [0m[1m[0mnum_cpus[0m[0m                                = 8
      [32m+[0m [0m[1m[0mpower_state[0m[0m                             = (known after apply)
      [32m+[0m [0m[1m[0mpoweron_timeout[0m[0m                         = 300
      [32m+[0m [0m[1m[0mreboot_required[0m[0m                         = (known after apply)
      [32m+[0m [0m[1m[0mresource_pool_id[0m[0m                        = "resgroup-44522"
      [32m+[0m [0m[1m[0mrun_tools_scripts_after_power_on[0m[0m        = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_after_resume[0m[0m          = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_before_guest_shutdown[0m[0m = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_before_guest_standby[0m[0m  = true
      [32m+[0m [0m[1m[0msata_controller_count[0m[0m                   = 0
      [32m+[0m [0m[1m[0mscsi_bus_sharing[0m[0m                        = "noSharing"
      [32m+[0m [0m[1m[0mscsi_controller_count[0m[0m                   = 1
      [32m+[0m [0m[1m[0mscsi_type[0m[0m                               = "pvscsi"
      [32m+[0m [0m[1m[0mshutdown_wait_timeout[0m[0m                   = 3
      [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m                       = (known after apply)
      [32m+[0m [0m[1m[0mswap_placement_policy[0m[0m                   = "inherit"
      [32m+[0m [0m[1m[0mtags[0m[0m                                    = [
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:7d472c8b-9b2c-49e1-95d1-7b383aca8067:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:a00d9809-5c0c-436a-89f5-4aeb2594df19:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:dab38fe6-d558-463a-9e4e-77672ee9c014:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:f21e0e80-72cd-4f36-8ebf-42d008362bef:GLOBAL",
        ]
      [32m+[0m [0m[1m[0mtools_upgrade_policy[0m[0m                    = "manual"
      [32m+[0m [0m[1m[0muuid[0m[0m                                    = (known after apply)
      [32m+[0m [0m[1m[0mvapp_transport[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mvmware_tools_status[0m[0m                     = (known after apply)
      [32m+[0m [0m[1m[0mvmx_path[0m[0m                                = (known after apply)
      [32m+[0m [0m[1m[0mwait_for_guest_ip_timeout[0m[0m               = 0
      [32m+[0m [0m[1m[0mwait_for_guest_net_routable[0m[0m             = true
      [32m+[0m [0m[1m[0mwait_for_guest_net_timeout[0m[0m              = 5

      [32m+[0m [0mclone {
          [32m+[0m [0m[1m[0mtemplate_uuid[0m[0m = "420aeedd-9fca-2936-fbcb-b49ec2e89171"
          [32m+[0m [0m[1m[0mtimeout[0m[0m       = 30

          [32m+[0m [0mcustomize {
              [32m+[0m [0m[1m[0mtimeout[0m[0m = 10

              [32m+[0m [0mlinux_options {
                  [32m+[0m [0m[1m[0mdomain[0m[0m       = "hcl.lmco.com"
                  [32m+[0m [0m[1m[0mhost_name[0m[0m    = "u8-o2x-dev131"
                  [32m+[0m [0m[1m[0mhw_clock_utc[0m[0m = true
                }

              [32m+[0m [0mnetwork_interface {}
            }
        }

      [32m+[0m [0mdisk {
          [32m+[0m [0m[1m[0mattach[0m[0m            = false
          [32m+[0m [0m[1m[0mcontroller_type[0m[0m   = "scsi"
          [32m+[0m [0m[1m[0mdatastore_id[0m[0m      = "<computed>"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m    = (known after apply)
          [32m+[0m [0m[1m[0mdisk_mode[0m[0m         = "persistent"
          [32m+[0m [0m[1m[0mdisk_sharing[0m[0m      = "sharingNone"
          [32m+[0m [0m[1m[0meagerly_scrub[0m[0m     = false
          [32m+[0m [0m[1m[0mio_limit[0m[0m          = -1
          [32m+[0m [0m[1m[0mio_reservation[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_count[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_level[0m[0m    = "normal"
          [32m+[0m [0m[1m[0mkeep_on_remove[0m[0m    = false
          [32m+[0m [0m[1m[0mkey[0m[0m               = 0
          [32m+[0m [0m[1m[0mlabel[0m[0m             = "os"
          [32m+[0m [0m[1m[0mpath[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0msize[0m[0m              = 254
          [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mthin_provisioned[0m[0m  = true
          [32m+[0m [0m[1m[0munit_number[0m[0m       = 0
          [32m+[0m [0m[1m[0muuid[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0mwrite_through[0m[0m     = false
        }
      [32m+[0m [0mdisk {
          [32m+[0m [0m[1m[0mattach[0m[0m            = false
          [32m+[0m [0m[1m[0mcontroller_type[0m[0m   = "scsi"
          [32m+[0m [0m[1m[0mdatastore_id[0m[0m      = "<computed>"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m    = (known after apply)
          [32m+[0m [0m[1m[0mdisk_mode[0m[0m         = "persistent"
          [32m+[0m [0m[1m[0mdisk_sharing[0m[0m      = "sharingNone"
          [32m+[0m [0m[1m[0meagerly_scrub[0m[0m     = false
          [32m+[0m [0m[1m[0mio_limit[0m[0m          = -1
          [32m+[0m [0m[1m[0mio_reservation[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_count[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_level[0m[0m    = "normal"
          [32m+[0m [0m[1m[0mkeep_on_remove[0m[0m    = false
          [32m+[0m [0m[1m[0mkey[0m[0m               = 0
          [32m+[0m [0m[1m[0mlabel[0m[0m             = "data"
          [32m+[0m [0m[1m[0mpath[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0msize[0m[0m              = 586
          [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mthin_provisioned[0m[0m  = true
          [32m+[0m [0m[1m[0munit_number[0m[0m       = 1
          [32m+[0m [0m[1m[0muuid[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0mwrite_through[0m[0m     = false
        }

      [32m+[0m [0mnetwork_interface {
          [32m+[0m [0m[1m[0madapter_type[0m[0m          = "vmxnet3"
          [32m+[0m [0m[1m[0mbandwidth_limit[0m[0m       = -1
          [32m+[0m [0m[1m[0mbandwidth_reservation[0m[0m = 0
          [32m+[0m [0m[1m[0mbandwidth_share_count[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mbandwidth_share_level[0m[0m = "normal"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m        = (known after apply)
          [32m+[0m [0m[1m[0mkey[0m[0m                   = (known after apply)
          [32m+[0m [0m[1m[0mmac_address[0m[0m           = (known after apply)
          [32m+[0m [0m[1m[0mnetwork_id[0m[0m            = "dvportgroup-44946"
        }
    }

[1m  # vsphere_virtual_machine.vm["u8-o2x-dev139"][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "vsphere_virtual_machine" "vm" {
      [32m+[0m [0m[1m[0mannotation[0m[0m                              = (known after apply)
      [32m+[0m [0m[1m[0mboot_retry_delay[0m[0m                        = 10000
      [32m+[0m [0m[1m[0mchange_version[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mcpu_limit[0m[0m                               = -1
      [32m+[0m [0m[1m[0mcpu_share_count[0m[0m                         = (known after apply)
      [32m+[0m [0m[1m[0mcpu_share_level[0m[0m                         = "normal"
      [32m+[0m [0m[1m[0mdatastore_id[0m[0m                            = "datastore-44551"
      [32m+[0m [0m[1m[0mdefault_ip_address[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mept_rvi_mode[0m[0m                            = "automatic"
      [32m+[0m [0m[1m[0mextra_config_reboot_required[0m[0m            = true
      [32m+[0m [0m[1m[0mfirmware[0m[0m                                = "bios"
      [32m+[0m [0m[1m[0mfolder[0m[0m                                  = "IAC"
      [32m+[0m [0m[1m[0mforce_power_off[0m[0m                         = true
      [32m+[0m [0m[1m[0mguest_id[0m[0m                                = "rhel8_64Guest"
      [32m+[0m [0m[1m[0mguest_ip_addresses[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mhardware_version[0m[0m                        = (known after apply)
      [32m+[0m [0m[1m[0mhost_system_id[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mhv_mode[0m[0m                                 = "hvAuto"
      [32m+[0m [0m[1m[0mid[0m[0m                                      = (known after apply)
      [32m+[0m [0m[1m[0mide_controller_count[0m[0m                    = 2
      [32m+[0m [0m[1m[0mimported[0m[0m                                = (known after apply)
      [32m+[0m [0m[1m[0mlatency_sensitivity[0m[0m                     = "normal"
      [32m+[0m [0m[1m[0mmemory[0m[0m                                  = 16384
      [32m+[0m [0m[1m[0mmemory_limit[0m[0m                            = -1
      [32m+[0m [0m[1m[0mmemory_share_count[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mmemory_share_level[0m[0m                      = "normal"
      [32m+[0m [0m[1m[0mmigrate_wait_timeout[0m[0m                    = 30
      [32m+[0m [0m[1m[0mmoid[0m[0m                                    = (known after apply)
      [32m+[0m [0m[1m[0mname[0m[0m                                    = "u8-o2x-dev139"
      [32m+[0m [0m[1m[0mnum_cores_per_socket[0m[0m                    = 1
      [32m+[0m [0m[1m[0mnum_cpus[0m[0m                                = 8
      [32m+[0m [0m[1m[0mpower_state[0m[0m                             = (known after apply)
      [32m+[0m [0m[1m[0mpoweron_timeout[0m[0m                         = 300
      [32m+[0m [0m[1m[0mreboot_required[0m[0m                         = (known after apply)
      [32m+[0m [0m[1m[0mresource_pool_id[0m[0m                        = "resgroup-44522"
      [32m+[0m [0m[1m[0mrun_tools_scripts_after_power_on[0m[0m        = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_after_resume[0m[0m          = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_before_guest_shutdown[0m[0m = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_before_guest_standby[0m[0m  = true
      [32m+[0m [0m[1m[0msata_controller_count[0m[0m                   = 0
      [32m+[0m [0m[1m[0mscsi_bus_sharing[0m[0m                        = "noSharing"
      [32m+[0m [0m[1m[0mscsi_controller_count[0m[0m                   = 1
      [32m+[0m [0m[1m[0mscsi_type[0m[0m                               = "pvscsi"
      [32m+[0m [0m[1m[0mshutdown_wait_timeout[0m[0m                   = 3
      [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m                       = (known after apply)
      [32m+[0m [0m[1m[0mswap_placement_policy[0m[0m                   = "inherit"
      [32m+[0m [0m[1m[0mtags[0m[0m                                    = [
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:7d472c8b-9b2c-49e1-95d1-7b383aca8067:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:a00d9809-5c0c-436a-89f5-4aeb2594df19:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:dab38fe6-d558-463a-9e4e-77672ee9c014:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:f21e0e80-72cd-4f36-8ebf-42d008362bef:GLOBAL",
        ]
      [32m+[0m [0m[1m[0mtools_upgrade_policy[0m[0m                    = "manual"
      [32m+[0m [0m[1m[0muuid[0m[0m                                    = (known after apply)
      [32m+[0m [0m[1m[0mvapp_transport[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mvmware_tools_status[0m[0m                     = (known after apply)
      [32m+[0m [0m[1m[0mvmx_path[0m[0m                                = (known after apply)
      [32m+[0m [0m[1m[0mwait_for_guest_ip_timeout[0m[0m               = 0
      [32m+[0m [0m[1m[0mwait_for_guest_net_routable[0m[0m             = true
      [32m+[0m [0m[1m[0mwait_for_guest_net_timeout[0m[0m              = 5

      [32m+[0m [0mclone {
          [32m+[0m [0m[1m[0mtemplate_uuid[0m[0m = "420aeedd-9fca-2936-fbcb-b49ec2e89171"
          [32m+[0m [0m[1m[0mtimeout[0m[0m       = 30

          [32m+[0m [0mcustomize {
              [32m+[0m [0m[1m[0mtimeout[0m[0m = 10

              [32m+[0m [0mlinux_options {
                  [32m+[0m [0m[1m[0mdomain[0m[0m       = "hcl.lmco.com"
                  [32m+[0m [0m[1m[0mhost_name[0m[0m    = "u8-o2x-dev139"
                  [32m+[0m [0m[1m[0mhw_clock_utc[0m[0m = true
                }

              [32m+[0m [0mnetwork_interface {}
            }
        }

      [32m+[0m [0mdisk {
          [32m+[0m [0m[1m[0mattach[0m[0m            = false
          [32m+[0m [0m[1m[0mcontroller_type[0m[0m   = "scsi"
          [32m+[0m [0m[1m[0mdatastore_id[0m[0m      = "<computed>"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m    = (known after apply)
          [32m+[0m [0m[1m[0mdisk_mode[0m[0m         = "persistent"
          [32m+[0m [0m[1m[0mdisk_sharing[0m[0m      = "sharingNone"
          [32m+[0m [0m[1m[0meagerly_scrub[0m[0m     = false
          [32m+[0m [0m[1m[0mio_limit[0m[0m          = -1
          [32m+[0m [0m[1m[0mio_reservation[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_count[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_level[0m[0m    = "normal"
          [32m+[0m [0m[1m[0mkeep_on_remove[0m[0m    = false
          [32m+[0m [0m[1m[0mkey[0m[0m               = 0
          [32m+[0m [0m[1m[0mlabel[0m[0m             = "os"
          [32m+[0m [0m[1m[0mpath[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0msize[0m[0m              = 254
          [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mthin_provisioned[0m[0m  = true
          [32m+[0m [0m[1m[0munit_number[0m[0m       = 0
          [32m+[0m [0m[1m[0muuid[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0mwrite_through[0m[0m     = false
        }
      [32m+[0m [0mdisk {
          [32m+[0m [0m[1m[0mattach[0m[0m            = false
          [32m+[0m [0m[1m[0mcontroller_type[0m[0m   = "scsi"
          [32m+[0m [0m[1m[0mdatastore_id[0m[0m      = "<computed>"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m    = (known after apply)
          [32m+[0m [0m[1m[0mdisk_mode[0m[0m         = "persistent"
          [32m+[0m [0m[1m[0mdisk_sharing[0m[0m      = "sharingNone"
          [32m+[0m [0m[1m[0meagerly_scrub[0m[0m     = false
          [32m+[0m [0m[1m[0mio_limit[0m[0m          = -1
          [32m+[0m [0m[1m[0mio_reservation[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_count[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_level[0m[0m    = "normal"
          [32m+[0m [0m[1m[0mkeep_on_remove[0m[0m    = false
          [32m+[0m [0m[1m[0mkey[0m[0m               = 0
          [32m+[0m [0m[1m[0mlabel[0m[0m             = "data"
          [32m+[0m [0m[1m[0mpath[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0msize[0m[0m              = 586
          [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mthin_provisioned[0m[0m  = true
          [32m+[0m [0m[1m[0munit_number[0m[0m       = 1
          [32m+[0m [0m[1m[0muuid[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0mwrite_through[0m[0m     = false
        }

      [32m+[0m [0mnetwork_interface {
          [32m+[0m [0m[1m[0madapter_type[0m[0m          = "vmxnet3"
          [32m+[0m [0m[1m[0mbandwidth_limit[0m[0m       = -1
          [32m+[0m [0m[1m[0mbandwidth_reservation[0m[0m = 0
          [32m+[0m [0m[1m[0mbandwidth_share_count[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mbandwidth_share_level[0m[0m = "normal"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m        = (known after apply)
          [32m+[0m [0m[1m[0mkey[0m[0m                   = (known after apply)
          [32m+[0m [0m[1m[0mmac_address[0m[0m           = (known after apply)
          [32m+[0m [0m[1m[0mnetwork_id[0m[0m            = "dvportgroup-44946"
        }
    }

[1m  # vsphere_virtual_machine.vm["u8-o2x-dev144"][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "vsphere_virtual_machine" "vm" {
      [32m+[0m [0m[1m[0mannotation[0m[0m                              = (known after apply)
      [32m+[0m [0m[1m[0mboot_retry_delay[0m[0m                        = 10000
      [32m+[0m [0m[1m[0mchange_version[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mcpu_limit[0m[0m                               = -1
      [32m+[0m [0m[1m[0mcpu_share_count[0m[0m                         = (known after apply)
      [32m+[0m [0m[1m[0mcpu_share_level[0m[0m                         = "normal"
      [32m+[0m [0m[1m[0mdatastore_id[0m[0m                            = "datastore-44551"
      [32m+[0m [0m[1m[0mdefault_ip_address[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mept_rvi_mode[0m[0m                            = "automatic"
      [32m+[0m [0m[1m[0mextra_config_reboot_required[0m[0m            = true
      [32m+[0m [0m[1m[0mfirmware[0m[0m                                = "bios"
      [32m+[0m [0m[1m[0mfolder[0m[0m                                  = "IAC"
      [32m+[0m [0m[1m[0mforce_power_off[0m[0m                         = true
      [32m+[0m [0m[1m[0mguest_id[0m[0m                                = "rhel8_64Guest"
      [32m+[0m [0m[1m[0mguest_ip_addresses[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mhardware_version[0m[0m                        = (known after apply)
      [32m+[0m [0m[1m[0mhost_system_id[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mhv_mode[0m[0m                                 = "hvAuto"
      [32m+[0m [0m[1m[0mid[0m[0m                                      = (known after apply)
      [32m+[0m [0m[1m[0mide_controller_count[0m[0m                    = 2
      [32m+[0m [0m[1m[0mimported[0m[0m                                = (known after apply)
      [32m+[0m [0m[1m[0mlatency_sensitivity[0m[0m                     = "normal"
      [32m+[0m [0m[1m[0mmemory[0m[0m                                  = 16384
      [32m+[0m [0m[1m[0mmemory_limit[0m[0m                            = -1
      [32m+[0m [0m[1m[0mmemory_share_count[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mmemory_share_level[0m[0m                      = "normal"
      [32m+[0m [0m[1m[0mmigrate_wait_timeout[0m[0m                    = 30
      [32m+[0m [0m[1m[0mmoid[0m[0m                                    = (known after apply)
      [32m+[0m [0m[1m[0mname[0m[0m                                    = "u8-o2x-dev144"
      [32m+[0m [0m[1m[0mnum_cores_per_socket[0m[0m                    = 1
      [32m+[0m [0m[1m[0mnum_cpus[0m[0m                                = 8
      [32m+[0m [0m[1m[0mpower_state[0m[0m                             = (known after apply)
      [32m+[0m [0m[1m[0mpoweron_timeout[0m[0m                         = 300
      [32m+[0m [0m[1m[0mreboot_required[0m[0m                         = (known after apply)
      [32m+[0m [0m[1m[0mresource_pool_id[0m[0m                        = "resgroup-44522"
      [32m+[0m [0m[1m[0mrun_tools_scripts_after_power_on[0m[0m        = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_after_resume[0m[0m          = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_before_guest_shutdown[0m[0m = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_before_guest_standby[0m[0m  = true
      [32m+[0m [0m[1m[0msata_controller_count[0m[0m                   = 0
      [32m+[0m [0m[1m[0mscsi_bus_sharing[0m[0m                        = "noSharing"
      [32m+[0m [0m[1m[0mscsi_controller_count[0m[0m                   = 1
      [32m+[0m [0m[1m[0mscsi_type[0m[0m                               = "pvscsi"
      [32m+[0m [0m[1m[0mshutdown_wait_timeout[0m[0m                   = 3
      [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m                       = (known after apply)
      [32m+[0m [0m[1m[0mswap_placement_policy[0m[0m                   = "inherit"
      [32m+[0m [0m[1m[0mtags[0m[0m                                    = [
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:7d472c8b-9b2c-49e1-95d1-7b383aca8067:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:a00d9809-5c0c-436a-89f5-4aeb2594df19:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:dab38fe6-d558-463a-9e4e-77672ee9c014:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:f21e0e80-72cd-4f36-8ebf-42d008362bef:GLOBAL",
        ]
      [32m+[0m [0m[1m[0mtools_upgrade_policy[0m[0m                    = "manual"
      [32m+[0m [0m[1m[0muuid[0m[0m                                    = (known after apply)
      [32m+[0m [0m[1m[0mvapp_transport[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mvmware_tools_status[0m[0m                     = (known after apply)
      [32m+[0m [0m[1m[0mvmx_path[0m[0m                                = (known after apply)
      [32m+[0m [0m[1m[0mwait_for_guest_ip_timeout[0m[0m               = 0
      [32m+[0m [0m[1m[0mwait_for_guest_net_routable[0m[0m             = true
      [32m+[0m [0m[1m[0mwait_for_guest_net_timeout[0m[0m              = 5

      [32m+[0m [0mclone {
          [32m+[0m [0m[1m[0mtemplate_uuid[0m[0m = "420aeedd-9fca-2936-fbcb-b49ec2e89171"
          [32m+[0m [0m[1m[0mtimeout[0m[0m       = 30

          [32m+[0m [0mcustomize {
              [32m+[0m [0m[1m[0mtimeout[0m[0m = 10

              [32m+[0m [0mlinux_options {
                  [32m+[0m [0m[1m[0mdomain[0m[0m       = "hcl.lmco.com"
                  [32m+[0m [0m[1m[0mhost_name[0m[0m    = "u8-o2x-dev144"
                  [32m+[0m [0m[1m[0mhw_clock_utc[0m[0m = true
                }

              [32m+[0m [0mnetwork_interface {}
            }
        }

      [32m+[0m [0mdisk {
          [32m+[0m [0m[1m[0mattach[0m[0m            = false
          [32m+[0m [0m[1m[0mcontroller_type[0m[0m   = "scsi"
          [32m+[0m [0m[1m[0mdatastore_id[0m[0m      = "<computed>"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m    = (known after apply)
          [32m+[0m [0m[1m[0mdisk_mode[0m[0m         = "persistent"
          [32m+[0m [0m[1m[0mdisk_sharing[0m[0m      = "sharingNone"
          [32m+[0m [0m[1m[0meagerly_scrub[0m[0m     = false
          [32m+[0m [0m[1m[0mio_limit[0m[0m          = -1
          [32m+[0m [0m[1m[0mio_reservation[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_count[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_level[0m[0m    = "normal"
          [32m+[0m [0m[1m[0mkeep_on_remove[0m[0m    = false
          [32m+[0m [0m[1m[0mkey[0m[0m               = 0
          [32m+[0m [0m[1m[0mlabel[0m[0m             = "os"
          [32m+[0m [0m[1m[0mpath[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0msize[0m[0m              = 254
          [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mthin_provisioned[0m[0m  = true
          [32m+[0m [0m[1m[0munit_number[0m[0m       = 0
          [32m+[0m [0m[1m[0muuid[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0mwrite_through[0m[0m     = false
        }
      [32m+[0m [0mdisk {
          [32m+[0m [0m[1m[0mattach[0m[0m            = false
          [32m+[0m [0m[1m[0mcontroller_type[0m[0m   = "scsi"
          [32m+[0m [0m[1m[0mdatastore_id[0m[0m      = "<computed>"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m    = (known after apply)
          [32m+[0m [0m[1m[0mdisk_mode[0m[0m         = "persistent"
          [32m+[0m [0m[1m[0mdisk_sharing[0m[0m      = "sharingNone"
          [32m+[0m [0m[1m[0meagerly_scrub[0m[0m     = false
          [32m+[0m [0m[1m[0mio_limit[0m[0m          = -1
          [32m+[0m [0m[1m[0mio_reservation[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_count[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_level[0m[0m    = "normal"
          [32m+[0m [0m[1m[0mkeep_on_remove[0m[0m    = false
          [32m+[0m [0m[1m[0mkey[0m[0m               = 0
          [32m+[0m [0m[1m[0mlabel[0m[0m             = "data"
          [32m+[0m [0m[1m[0mpath[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0msize[0m[0m              = 586
          [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mthin_provisioned[0m[0m  = true
          [32m+[0m [0m[1m[0munit_number[0m[0m       = 1
          [32m+[0m [0m[1m[0muuid[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0mwrite_through[0m[0m     = false
        }

      [32m+[0m [0mnetwork_interface {
          [32m+[0m [0m[1m[0madapter_type[0m[0m          = "vmxnet3"
          [32m+[0m [0m[1m[0mbandwidth_limit[0m[0m       = -1
          [32m+[0m [0m[1m[0mbandwidth_reservation[0m[0m = 0
          [32m+[0m [0m[1m[0mbandwidth_share_count[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mbandwidth_share_level[0m[0m = "normal"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m        = (known after apply)
          [32m+[0m [0m[1m[0mkey[0m[0m                   = (known after apply)
          [32m+[0m [0m[1m[0mmac_address[0m[0m           = (known after apply)
          [32m+[0m [0m[1m[0mnetwork_id[0m[0m            = "dvportgroup-44946"
        }
    }

[1m  # vsphere_virtual_machine.vm["u8-o2x-dev146"][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "vsphere_virtual_machine" "vm" {
      [32m+[0m [0m[1m[0mannotation[0m[0m                              = (known after apply)
      [32m+[0m [0m[1m[0mboot_retry_delay[0m[0m                        = 10000
      [32m+[0m [0m[1m[0mchange_version[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mcpu_limit[0m[0m                               = -1
      [32m+[0m [0m[1m[0mcpu_share_count[0m[0m                         = (known after apply)
      [32m+[0m [0m[1m[0mcpu_share_level[0m[0m                         = "normal"
      [32m+[0m [0m[1m[0mdatastore_id[0m[0m                            = "datastore-44551"
      [32m+[0m [0m[1m[0mdefault_ip_address[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mept_rvi_mode[0m[0m                            = "automatic"
      [32m+[0m [0m[1m[0mextra_config_reboot_required[0m[0m            = true
      [32m+[0m [0m[1m[0mfirmware[0m[0m                                = "bios"
      [32m+[0m [0m[1m[0mfolder[0m[0m                                  = "IAC"
      [32m+[0m [0m[1m[0mforce_power_off[0m[0m                         = true
      [32m+[0m [0m[1m[0mguest_id[0m[0m                                = "rhel8_64Guest"
      [32m+[0m [0m[1m[0mguest_ip_addresses[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mhardware_version[0m[0m                        = (known after apply)
      [32m+[0m [0m[1m[0mhost_system_id[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mhv_mode[0m[0m                                 = "hvAuto"
      [32m+[0m [0m[1m[0mid[0m[0m                                      = (known after apply)
      [32m+[0m [0m[1m[0mide_controller_count[0m[0m                    = 2
      [32m+[0m [0m[1m[0mimported[0m[0m                                = (known after apply)
      [32m+[0m [0m[1m[0mlatency_sensitivity[0m[0m                     = "normal"
      [32m+[0m [0m[1m[0mmemory[0m[0m                                  = 16384
      [32m+[0m [0m[1m[0mmemory_limit[0m[0m                            = -1
      [32m+[0m [0m[1m[0mmemory_share_count[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mmemory_share_level[0m[0m                      = "normal"
      [32m+[0m [0m[1m[0mmigrate_wait_timeout[0m[0m                    = 30
      [32m+[0m [0m[1m[0mmoid[0m[0m                                    = (known after apply)
      [32m+[0m [0m[1m[0mname[0m[0m                                    = "u8-o2x-dev146"
      [32m+[0m [0m[1m[0mnum_cores_per_socket[0m[0m                    = 1
      [32m+[0m [0m[1m[0mnum_cpus[0m[0m                                = 8
      [32m+[0m [0m[1m[0mpower_state[0m[0m                             = (known after apply)
      [32m+[0m [0m[1m[0mpoweron_timeout[0m[0m                         = 300
      [32m+[0m [0m[1m[0mreboot_required[0m[0m                         = (known after apply)
      [32m+[0m [0m[1m[0mresource_pool_id[0m[0m                        = "resgroup-44522"
      [32m+[0m [0m[1m[0mrun_tools_scripts_after_power_on[0m[0m        = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_after_resume[0m[0m          = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_before_guest_shutdown[0m[0m = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_before_guest_standby[0m[0m  = true
      [32m+[0m [0m[1m[0msata_controller_count[0m[0m                   = 0
      [32m+[0m [0m[1m[0mscsi_bus_sharing[0m[0m                        = "noSharing"
      [32m+[0m [0m[1m[0mscsi_controller_count[0m[0m                   = 1
      [32m+[0m [0m[1m[0mscsi_type[0m[0m                               = "pvscsi"
      [32m+[0m [0m[1m[0mshutdown_wait_timeout[0m[0m                   = 3
      [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m                       = (known after apply)
      [32m+[0m [0m[1m[0mswap_placement_policy[0m[0m                   = "inherit"
      [32m+[0m [0m[1m[0mtags[0m[0m                                    = [
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:7d472c8b-9b2c-49e1-95d1-7b383aca8067:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:a00d9809-5c0c-436a-89f5-4aeb2594df19:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:dab38fe6-d558-463a-9e4e-77672ee9c014:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:f21e0e80-72cd-4f36-8ebf-42d008362bef:GLOBAL",
        ]
      [32m+[0m [0m[1m[0mtools_upgrade_policy[0m[0m                    = "manual"
      [32m+[0m [0m[1m[0muuid[0m[0m                                    = (known after apply)
      [32m+[0m [0m[1m[0mvapp_transport[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mvmware_tools_status[0m[0m                     = (known after apply)
      [32m+[0m [0m[1m[0mvmx_path[0m[0m                                = (known after apply)
      [32m+[0m [0m[1m[0mwait_for_guest_ip_timeout[0m[0m               = 0
      [32m+[0m [0m[1m[0mwait_for_guest_net_routable[0m[0m             = true
      [32m+[0m [0m[1m[0mwait_for_guest_net_timeout[0m[0m              = 5

      [32m+[0m [0mclone {
          [32m+[0m [0m[1m[0mtemplate_uuid[0m[0m = "420aeedd-9fca-2936-fbcb-b49ec2e89171"
          [32m+[0m [0m[1m[0mtimeout[0m[0m       = 30

          [32m+[0m [0mcustomize {
              [32m+[0m [0m[1m[0mtimeout[0m[0m = 10

              [32m+[0m [0mlinux_options {
                  [32m+[0m [0m[1m[0mdomain[0m[0m       = "hcl.lmco.com"
                  [32m+[0m [0m[1m[0mhost_name[0m[0m    = "u8-o2x-dev146"
                  [32m+[0m [0m[1m[0mhw_clock_utc[0m[0m = true
                }

              [32m+[0m [0mnetwork_interface {}
            }
        }

      [32m+[0m [0mdisk {
          [32m+[0m [0m[1m[0mattach[0m[0m            = false
          [32m+[0m [0m[1m[0mcontroller_type[0m[0m   = "scsi"
          [32m+[0m [0m[1m[0mdatastore_id[0m[0m      = "<computed>"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m    = (known after apply)
          [32m+[0m [0m[1m[0mdisk_mode[0m[0m         = "persistent"
          [32m+[0m [0m[1m[0mdisk_sharing[0m[0m      = "sharingNone"
          [32m+[0m [0m[1m[0meagerly_scrub[0m[0m     = false
          [32m+[0m [0m[1m[0mio_limit[0m[0m          = -1
          [32m+[0m [0m[1m[0mio_reservation[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_count[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_level[0m[0m    = "normal"
          [32m+[0m [0m[1m[0mkeep_on_remove[0m[0m    = false
          [32m+[0m [0m[1m[0mkey[0m[0m               = 0
          [32m+[0m [0m[1m[0mlabel[0m[0m             = "os"
          [32m+[0m [0m[1m[0mpath[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0msize[0m[0m              = 254
          [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mthin_provisioned[0m[0m  = true
          [32m+[0m [0m[1m[0munit_number[0m[0m       = 0
          [32m+[0m [0m[1m[0muuid[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0mwrite_through[0m[0m     = false
        }
      [32m+[0m [0mdisk {
          [32m+[0m [0m[1m[0mattach[0m[0m            = false
          [32m+[0m [0m[1m[0mcontroller_type[0m[0m   = "scsi"
          [32m+[0m [0m[1m[0mdatastore_id[0m[0m      = "<computed>"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m    = (known after apply)
          [32m+[0m [0m[1m[0mdisk_mode[0m[0m         = "persistent"
          [32m+[0m [0m[1m[0mdisk_sharing[0m[0m      = "sharingNone"
          [32m+[0m [0m[1m[0meagerly_scrub[0m[0m     = false
          [32m+[0m [0m[1m[0mio_limit[0m[0m          = -1
          [32m+[0m [0m[1m[0mio_reservation[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_count[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_level[0m[0m    = "normal"
          [32m+[0m [0m[1m[0mkeep_on_remove[0m[0m    = false
          [32m+[0m [0m[1m[0mkey[0m[0m               = 0
          [32m+[0m [0m[1m[0mlabel[0m[0m             = "data"
          [32m+[0m [0m[1m[0mpath[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0msize[0m[0m              = 586
          [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mthin_provisioned[0m[0m  = true
          [32m+[0m [0m[1m[0munit_number[0m[0m       = 1
          [32m+[0m [0m[1m[0muuid[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0mwrite_through[0m[0m     = false
        }

      [32m+[0m [0mnetwork_interface {
          [32m+[0m [0m[1m[0madapter_type[0m[0m          = "vmxnet3"
          [32m+[0m [0m[1m[0mbandwidth_limit[0m[0m       = -1
          [32m+[0m [0m[1m[0mbandwidth_reservation[0m[0m = 0
          [32m+[0m [0m[1m[0mbandwidth_share_count[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mbandwidth_share_level[0m[0m = "normal"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m        = (known after apply)
          [32m+[0m [0m[1m[0mkey[0m[0m                   = (known after apply)
          [32m+[0m [0m[1m[0mmac_address[0m[0m           = (known after apply)
          [32m+[0m [0m[1m[0mnetwork_id[0m[0m            = "dvportgroup-44946"
        }
    }

[1m  # vsphere_virtual_machine.vm["u8-o2x-dev147"][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "vsphere_virtual_machine" "vm" {
      [32m+[0m [0m[1m[0mannotation[0m[0m                              = (known after apply)
      [32m+[0m [0m[1m[0mboot_retry_delay[0m[0m                        = 10000
      [32m+[0m [0m[1m[0mchange_version[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mcpu_limit[0m[0m                               = -1
      [32m+[0m [0m[1m[0mcpu_share_count[0m[0m                         = (known after apply)
      [32m+[0m [0m[1m[0mcpu_share_level[0m[0m                         = "normal"
      [32m+[0m [0m[1m[0mdatastore_id[0m[0m                            = "datastore-44551"
      [32m+[0m [0m[1m[0mdefault_ip_address[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mept_rvi_mode[0m[0m                            = "automatic"
      [32m+[0m [0m[1m[0mextra_config_reboot_required[0m[0m            = true
      [32m+[0m [0m[1m[0mfirmware[0m[0m                                = "bios"
      [32m+[0m [0m[1m[0mfolder[0m[0m                                  = "IAC"
      [32m+[0m [0m[1m[0mforce_power_off[0m[0m                         = true
      [32m+[0m [0m[1m[0mguest_id[0m[0m                                = "rhel8_64Guest"
      [32m+[0m [0m[1m[0mguest_ip_addresses[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mhardware_version[0m[0m                        = (known after apply)
      [32m+[0m [0m[1m[0mhost_system_id[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mhv_mode[0m[0m                                 = "hvAuto"
      [32m+[0m [0m[1m[0mid[0m[0m                                      = (known after apply)
      [32m+[0m [0m[1m[0mide_controller_count[0m[0m                    = 2
      [32m+[0m [0m[1m[0mimported[0m[0m                                = (known after apply)
      [32m+[0m [0m[1m[0mlatency_sensitivity[0m[0m                     = "normal"
      [32m+[0m [0m[1m[0mmemory[0m[0m                                  = 16384
      [32m+[0m [0m[1m[0mmemory_limit[0m[0m                            = -1
      [32m+[0m [0m[1m[0mmemory_share_count[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mmemory_share_level[0m[0m                      = "normal"
      [32m+[0m [0m[1m[0mmigrate_wait_timeout[0m[0m                    = 30
      [32m+[0m [0m[1m[0mmoid[0m[0m                                    = (known after apply)
      [32m+[0m [0m[1m[0mname[0m[0m                                    = "u8-o2x-dev147"
      [32m+[0m [0m[1m[0mnum_cores_per_socket[0m[0m                    = 1
      [32m+[0m [0m[1m[0mnum_cpus[0m[0m                                = 8
      [32m+[0m [0m[1m[0mpower_state[0m[0m                             = (known after apply)
      [32m+[0m [0m[1m[0mpoweron_timeout[0m[0m                         = 300
      [32m+[0m [0m[1m[0mreboot_required[0m[0m                         = (known after apply)
      [32m+[0m [0m[1m[0mresource_pool_id[0m[0m                        = "resgroup-44522"
      [32m+[0m [0m[1m[0mrun_tools_scripts_after_power_on[0m[0m        = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_after_resume[0m[0m          = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_before_guest_shutdown[0m[0m = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_before_guest_standby[0m[0m  = true
      [32m+[0m [0m[1m[0msata_controller_count[0m[0m                   = 0
      [32m+[0m [0m[1m[0mscsi_bus_sharing[0m[0m                        = "noSharing"
      [32m+[0m [0m[1m[0mscsi_controller_count[0m[0m                   = 1
      [32m+[0m [0m[1m[0mscsi_type[0m[0m                               = "pvscsi"
      [32m+[0m [0m[1m[0mshutdown_wait_timeout[0m[0m                   = 3
      [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m                       = (known after apply)
      [32m+[0m [0m[1m[0mswap_placement_policy[0m[0m                   = "inherit"
      [32m+[0m [0m[1m[0mtags[0m[0m                                    = [
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:7d472c8b-9b2c-49e1-95d1-7b383aca8067:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:a00d9809-5c0c-436a-89f5-4aeb2594df19:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:dab38fe6-d558-463a-9e4e-77672ee9c014:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:f21e0e80-72cd-4f36-8ebf-42d008362bef:GLOBAL",
        ]
      [32m+[0m [0m[1m[0mtools_upgrade_policy[0m[0m                    = "manual"
      [32m+[0m [0m[1m[0muuid[0m[0m                                    = (known after apply)
      [32m+[0m [0m[1m[0mvapp_transport[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mvmware_tools_status[0m[0m                     = (known after apply)
      [32m+[0m [0m[1m[0mvmx_path[0m[0m                                = (known after apply)
      [32m+[0m [0m[1m[0mwait_for_guest_ip_timeout[0m[0m               = 0
      [32m+[0m [0m[1m[0mwait_for_guest_net_routable[0m[0m             = true
      [32m+[0m [0m[1m[0mwait_for_guest_net_timeout[0m[0m              = 5

      [32m+[0m [0mclone {
          [32m+[0m [0m[1m[0mtemplate_uuid[0m[0m = "420aeedd-9fca-2936-fbcb-b49ec2e89171"
          [32m+[0m [0m[1m[0mtimeout[0m[0m       = 30

          [32m+[0m [0mcustomize {
              [32m+[0m [0m[1m[0mtimeout[0m[0m = 10

              [32m+[0m [0mlinux_options {
                  [32m+[0m [0m[1m[0mdomain[0m[0m       = "hcl.lmco.com"
                  [32m+[0m [0m[1m[0mhost_name[0m[0m    = "u8-o2x-dev147"
                  [32m+[0m [0m[1m[0mhw_clock_utc[0m[0m = true
                }

              [32m+[0m [0mnetwork_interface {}
            }
        }

      [32m+[0m [0mdisk {
          [32m+[0m [0m[1m[0mattach[0m[0m            = false
          [32m+[0m [0m[1m[0mcontroller_type[0m[0m   = "scsi"
          [32m+[0m [0m[1m[0mdatastore_id[0m[0m      = "<computed>"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m    = (known after apply)
          [32m+[0m [0m[1m[0mdisk_mode[0m[0m         = "persistent"
          [32m+[0m [0m[1m[0mdisk_sharing[0m[0m      = "sharingNone"
          [32m+[0m [0m[1m[0meagerly_scrub[0m[0m     = false
          [32m+[0m [0m[1m[0mio_limit[0m[0m          = -1
          [32m+[0m [0m[1m[0mio_reservation[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_count[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_level[0m[0m    = "normal"
          [32m+[0m [0m[1m[0mkeep_on_remove[0m[0m    = false
          [32m+[0m [0m[1m[0mkey[0m[0m               = 0
          [32m+[0m [0m[1m[0mlabel[0m[0m             = "os"
          [32m+[0m [0m[1m[0mpath[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0msize[0m[0m              = 254
          [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mthin_provisioned[0m[0m  = true
          [32m+[0m [0m[1m[0munit_number[0m[0m       = 0
          [32m+[0m [0m[1m[0muuid[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0mwrite_through[0m[0m     = false
        }
      [32m+[0m [0mdisk {
          [32m+[0m [0m[1m[0mattach[0m[0m            = false
          [32m+[0m [0m[1m[0mcontroller_type[0m[0m   = "scsi"
          [32m+[0m [0m[1m[0mdatastore_id[0m[0m      = "<computed>"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m    = (known after apply)
          [32m+[0m [0m[1m[0mdisk_mode[0m[0m         = "persistent"
          [32m+[0m [0m[1m[0mdisk_sharing[0m[0m      = "sharingNone"
          [32m+[0m [0m[1m[0meagerly_scrub[0m[0m     = false
          [32m+[0m [0m[1m[0mio_limit[0m[0m          = -1
          [32m+[0m [0m[1m[0mio_reservation[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_count[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_level[0m[0m    = "normal"
          [32m+[0m [0m[1m[0mkeep_on_remove[0m[0m    = false
          [32m+[0m [0m[1m[0mkey[0m[0m               = 0
          [32m+[0m [0m[1m[0mlabel[0m[0m             = "data"
          [32m+[0m [0m[1m[0mpath[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0msize[0m[0m              = 586
          [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mthin_provisioned[0m[0m  = true
          [32m+[0m [0m[1m[0munit_number[0m[0m       = 1
          [32m+[0m [0m[1m[0muuid[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0mwrite_through[0m[0m     = false
        }

      [32m+[0m [0mnetwork_interface {
          [32m+[0m [0m[1m[0madapter_type[0m[0m          = "vmxnet3"
          [32m+[0m [0m[1m[0mbandwidth_limit[0m[0m       = -1
          [32m+[0m [0m[1m[0mbandwidth_reservation[0m[0m = 0
          [32m+[0m [0m[1m[0mbandwidth_share_count[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mbandwidth_share_level[0m[0m = "normal"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m        = (known after apply)
          [32m+[0m [0m[1m[0mkey[0m[0m                   = (known after apply)
          [32m+[0m [0m[1m[0mmac_address[0m[0m           = (known after apply)
          [32m+[0m [0m[1m[0mnetwork_id[0m[0m            = "dvportgroup-44946"
        }
    }

[1m  # vsphere_virtual_machine.vm["u8-o2x-dev152"][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "vsphere_virtual_machine" "vm" {
      [32m+[0m [0m[1m[0mannotation[0m[0m                              = (known after apply)
      [32m+[0m [0m[1m[0mboot_retry_delay[0m[0m                        = 10000
      [32m+[0m [0m[1m[0mchange_version[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mcpu_limit[0m[0m                               = -1
      [32m+[0m [0m[1m[0mcpu_share_count[0m[0m                         = (known after apply)
      [32m+[0m [0m[1m[0mcpu_share_level[0m[0m                         = "normal"
      [32m+[0m [0m[1m[0mdatastore_id[0m[0m                            = "datastore-44551"
      [32m+[0m [0m[1m[0mdefault_ip_address[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mept_rvi_mode[0m[0m                            = "automatic"
      [32m+[0m [0m[1m[0mextra_config_reboot_required[0m[0m            = true
      [32m+[0m [0m[1m[0mfirmware[0m[0m                                = "bios"
      [32m+[0m [0m[1m[0mfolder[0m[0m                                  = "IAC"
      [32m+[0m [0m[1m[0mforce_power_off[0m[0m                         = true
      [32m+[0m [0m[1m[0mguest_id[0m[0m                                = "rhel8_64Guest"
      [32m+[0m [0m[1m[0mguest_ip_addresses[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mhardware_version[0m[0m                        = (known after apply)
      [32m+[0m [0m[1m[0mhost_system_id[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mhv_mode[0m[0m                                 = "hvAuto"
      [32m+[0m [0m[1m[0mid[0m[0m                                      = (known after apply)
      [32m+[0m [0m[1m[0mide_controller_count[0m[0m                    = 2
      [32m+[0m [0m[1m[0mimported[0m[0m                                = (known after apply)
      [32m+[0m [0m[1m[0mlatency_sensitivity[0m[0m                     = "normal"
      [32m+[0m [0m[1m[0mmemory[0m[0m                                  = 16384
      [32m+[0m [0m[1m[0mmemory_limit[0m[0m                            = -1
      [32m+[0m [0m[1m[0mmemory_share_count[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mmemory_share_level[0m[0m                      = "normal"
      [32m+[0m [0m[1m[0mmigrate_wait_timeout[0m[0m                    = 30
      [32m+[0m [0m[1m[0mmoid[0m[0m                                    = (known after apply)
      [32m+[0m [0m[1m[0mname[0m[0m                                    = "u8-o2x-dev152"
      [32m+[0m [0m[1m[0mnum_cores_per_socket[0m[0m                    = 1
      [32m+[0m [0m[1m[0mnum_cpus[0m[0m                                = 8
      [32m+[0m [0m[1m[0mpower_state[0m[0m                             = (known after apply)
      [32m+[0m [0m[1m[0mpoweron_timeout[0m[0m                         = 300
      [32m+[0m [0m[1m[0mreboot_required[0m[0m                         = (known after apply)
      [32m+[0m [0m[1m[0mresource_pool_id[0m[0m                        = "resgroup-44522"
      [32m+[0m [0m[1m[0mrun_tools_scripts_after_power_on[0m[0m        = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_after_resume[0m[0m          = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_before_guest_shutdown[0m[0m = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_before_guest_standby[0m[0m  = true
      [32m+[0m [0m[1m[0msata_controller_count[0m[0m                   = 0
      [32m+[0m [0m[1m[0mscsi_bus_sharing[0m[0m                        = "noSharing"
      [32m+[0m [0m[1m[0mscsi_controller_count[0m[0m                   = 1
      [32m+[0m [0m[1m[0mscsi_type[0m[0m                               = "pvscsi"
      [32m+[0m [0m[1m[0mshutdown_wait_timeout[0m[0m                   = 3
      [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m                       = (known after apply)
      [32m+[0m [0m[1m[0mswap_placement_policy[0m[0m                   = "inherit"
      [32m+[0m [0m[1m[0mtags[0m[0m                                    = [
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:7d472c8b-9b2c-49e1-95d1-7b383aca8067:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:a00d9809-5c0c-436a-89f5-4aeb2594df19:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:dab38fe6-d558-463a-9e4e-77672ee9c014:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:f21e0e80-72cd-4f36-8ebf-42d008362bef:GLOBAL",
        ]
      [32m+[0m [0m[1m[0mtools_upgrade_policy[0m[0m                    = "manual"
      [32m+[0m [0m[1m[0muuid[0m[0m                                    = (known after apply)
      [32m+[0m [0m[1m[0mvapp_transport[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mvmware_tools_status[0m[0m                     = (known after apply)
      [32m+[0m [0m[1m[0mvmx_path[0m[0m                                = (known after apply)
      [32m+[0m [0m[1m[0mwait_for_guest_ip_timeout[0m[0m               = 0
      [32m+[0m [0m[1m[0mwait_for_guest_net_routable[0m[0m             = true
      [32m+[0m [0m[1m[0mwait_for_guest_net_timeout[0m[0m              = 5

      [32m+[0m [0mclone {
          [32m+[0m [0m[1m[0mtemplate_uuid[0m[0m = "420aeedd-9fca-2936-fbcb-b49ec2e89171"
          [32m+[0m [0m[1m[0mtimeout[0m[0m       = 30

          [32m+[0m [0mcustomize {
              [32m+[0m [0m[1m[0mtimeout[0m[0m = 10

              [32m+[0m [0mlinux_options {
                  [32m+[0m [0m[1m[0mdomain[0m[0m       = "hcl.lmco.com"
                  [32m+[0m [0m[1m[0mhost_name[0m[0m    = "u8-o2x-dev152"
                  [32m+[0m [0m[1m[0mhw_clock_utc[0m[0m = true
                }

              [32m+[0m [0mnetwork_interface {}
            }
        }

      [32m+[0m [0mdisk {
          [32m+[0m [0m[1m[0mattach[0m[0m            = false
          [32m+[0m [0m[1m[0mcontroller_type[0m[0m   = "scsi"
          [32m+[0m [0m[1m[0mdatastore_id[0m[0m      = "<computed>"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m    = (known after apply)
          [32m+[0m [0m[1m[0mdisk_mode[0m[0m         = "persistent"
          [32m+[0m [0m[1m[0mdisk_sharing[0m[0m      = "sharingNone"
          [32m+[0m [0m[1m[0meagerly_scrub[0m[0m     = false
          [32m+[0m [0m[1m[0mio_limit[0m[0m          = -1
          [32m+[0m [0m[1m[0mio_reservation[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_count[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_level[0m[0m    = "normal"
          [32m+[0m [0m[1m[0mkeep_on_remove[0m[0m    = false
          [32m+[0m [0m[1m[0mkey[0m[0m               = 0
          [32m+[0m [0m[1m[0mlabel[0m[0m             = "os"
          [32m+[0m [0m[1m[0mpath[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0msize[0m[0m              = 254
          [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mthin_provisioned[0m[0m  = true
          [32m+[0m [0m[1m[0munit_number[0m[0m       = 0
          [32m+[0m [0m[1m[0muuid[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0mwrite_through[0m[0m     = false
        }
      [32m+[0m [0mdisk {
          [32m+[0m [0m[1m[0mattach[0m[0m            = false
          [32m+[0m [0m[1m[0mcontroller_type[0m[0m   = "scsi"
          [32m+[0m [0m[1m[0mdatastore_id[0m[0m      = "<computed>"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m    = (known after apply)
          [32m+[0m [0m[1m[0mdisk_mode[0m[0m         = "persistent"
          [32m+[0m [0m[1m[0mdisk_sharing[0m[0m      = "sharingNone"
          [32m+[0m [0m[1m[0meagerly_scrub[0m[0m     = false
          [32m+[0m [0m[1m[0mio_limit[0m[0m          = -1
          [32m+[0m [0m[1m[0mio_reservation[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_count[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_level[0m[0m    = "normal"
          [32m+[0m [0m[1m[0mkeep_on_remove[0m[0m    = false
          [32m+[0m [0m[1m[0mkey[0m[0m               = 0
          [32m+[0m [0m[1m[0mlabel[0m[0m             = "data"
          [32m+[0m [0m[1m[0mpath[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0msize[0m[0m              = 586
          [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mthin_provisioned[0m[0m  = true
          [32m+[0m [0m[1m[0munit_number[0m[0m       = 1
          [32m+[0m [0m[1m[0muuid[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0mwrite_through[0m[0m     = false
        }

      [32m+[0m [0mnetwork_interface {
          [32m+[0m [0m[1m[0madapter_type[0m[0m          = "vmxnet3"
          [32m+[0m [0m[1m[0mbandwidth_limit[0m[0m       = -1
          [32m+[0m [0m[1m[0mbandwidth_reservation[0m[0m = 0
          [32m+[0m [0m[1m[0mbandwidth_share_count[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mbandwidth_share_level[0m[0m = "normal"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m        = (known after apply)
          [32m+[0m [0m[1m[0mkey[0m[0m                   = (known after apply)
          [32m+[0m [0m[1m[0mmac_address[0m[0m           = (known after apply)
          [32m+[0m [0m[1m[0mnetwork_id[0m[0m            = "dvportgroup-44946"
        }
    }

[1m  # vsphere_virtual_machine.vm["u8-o2x-dev155"][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "vsphere_virtual_machine" "vm" {
      [32m+[0m [0m[1m[0mannotation[0m[0m                              = (known after apply)
      [32m+[0m [0m[1m[0mboot_retry_delay[0m[0m                        = 10000
      [32m+[0m [0m[1m[0mchange_version[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mcpu_limit[0m[0m                               = -1
      [32m+[0m [0m[1m[0mcpu_share_count[0m[0m                         = (known after apply)
      [32m+[0m [0m[1m[0mcpu_share_level[0m[0m                         = "normal"
      [32m+[0m [0m[1m[0mdatastore_id[0m[0m                            = "datastore-44551"
      [32m+[0m [0m[1m[0mdefault_ip_address[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mept_rvi_mode[0m[0m                            = "automatic"
      [32m+[0m [0m[1m[0mextra_config_reboot_required[0m[0m            = true
      [32m+[0m [0m[1m[0mfirmware[0m[0m                                = "bios"
      [32m+[0m [0m[1m[0mfolder[0m[0m                                  = "IAC"
      [32m+[0m [0m[1m[0mforce_power_off[0m[0m                         = true
      [32m+[0m [0m[1m[0mguest_id[0m[0m                                = "rhel8_64Guest"
      [32m+[0m [0m[1m[0mguest_ip_addresses[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mhardware_version[0m[0m                        = (known after apply)
      [32m+[0m [0m[1m[0mhost_system_id[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mhv_mode[0m[0m                                 = "hvAuto"
      [32m+[0m [0m[1m[0mid[0m[0m                                      = (known after apply)
      [32m+[0m [0m[1m[0mide_controller_count[0m[0m                    = 2
      [32m+[0m [0m[1m[0mimported[0m[0m                                = (known after apply)
      [32m+[0m [0m[1m[0mlatency_sensitivity[0m[0m                     = "normal"
      [32m+[0m [0m[1m[0mmemory[0m[0m                                  = 16384
      [32m+[0m [0m[1m[0mmemory_limit[0m[0m                            = -1
      [32m+[0m [0m[1m[0mmemory_share_count[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mmemory_share_level[0m[0m                      = "normal"
      [32m+[0m [0m[1m[0mmigrate_wait_timeout[0m[0m                    = 30
      [32m+[0m [0m[1m[0mmoid[0m[0m                                    = (known after apply)
      [32m+[0m [0m[1m[0mname[0m[0m                                    = "u8-o2x-dev155"
      [32m+[0m [0m[1m[0mnum_cores_per_socket[0m[0m                    = 1
      [32m+[0m [0m[1m[0mnum_cpus[0m[0m                                = 8
      [32m+[0m [0m[1m[0mpower_state[0m[0m                             = (known after apply)
      [32m+[0m [0m[1m[0mpoweron_timeout[0m[0m                         = 300
      [32m+[0m [0m[1m[0mreboot_required[0m[0m                         = (known after apply)
      [32m+[0m [0m[1m[0mresource_pool_id[0m[0m                        = "resgroup-44522"
      [32m+[0m [0m[1m[0mrun_tools_scripts_after_power_on[0m[0m        = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_after_resume[0m[0m          = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_before_guest_shutdown[0m[0m = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_before_guest_standby[0m[0m  = true
      [32m+[0m [0m[1m[0msata_controller_count[0m[0m                   = 0
      [32m+[0m [0m[1m[0mscsi_bus_sharing[0m[0m                        = "noSharing"
      [32m+[0m [0m[1m[0mscsi_controller_count[0m[0m                   = 1
      [32m+[0m [0m[1m[0mscsi_type[0m[0m                               = "pvscsi"
      [32m+[0m [0m[1m[0mshutdown_wait_timeout[0m[0m                   = 3
      [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m                       = (known after apply)
      [32m+[0m [0m[1m[0mswap_placement_policy[0m[0m                   = "inherit"
      [32m+[0m [0m[1m[0mtags[0m[0m                                    = [
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:7d472c8b-9b2c-49e1-95d1-7b383aca8067:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:a00d9809-5c0c-436a-89f5-4aeb2594df19:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:dab38fe6-d558-463a-9e4e-77672ee9c014:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:f21e0e80-72cd-4f36-8ebf-42d008362bef:GLOBAL",
        ]
      [32m+[0m [0m[1m[0mtools_upgrade_policy[0m[0m                    = "manual"
      [32m+[0m [0m[1m[0muuid[0m[0m                                    = (known after apply)
      [32m+[0m [0m[1m[0mvapp_transport[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mvmware_tools_status[0m[0m                     = (known after apply)
      [32m+[0m [0m[1m[0mvmx_path[0m[0m                                = (known after apply)
      [32m+[0m [0m[1m[0mwait_for_guest_ip_timeout[0m[0m               = 0
      [32m+[0m [0m[1m[0mwait_for_guest_net_routable[0m[0m             = true
      [32m+[0m [0m[1m[0mwait_for_guest_net_timeout[0m[0m              = 5

      [32m+[0m [0mclone {
          [32m+[0m [0m[1m[0mtemplate_uuid[0m[0m = "420aeedd-9fca-2936-fbcb-b49ec2e89171"
          [32m+[0m [0m[1m[0mtimeout[0m[0m       = 30

          [32m+[0m [0mcustomize {
              [32m+[0m [0m[1m[0mtimeout[0m[0m = 10

              [32m+[0m [0mlinux_options {
                  [32m+[0m [0m[1m[0mdomain[0m[0m       = "hcl.lmco.com"
                  [32m+[0m [0m[1m[0mhost_name[0m[0m    = "u8-o2x-dev155"
                  [32m+[0m [0m[1m[0mhw_clock_utc[0m[0m = true
                }

              [32m+[0m [0mnetwork_interface {}
            }
        }

      [32m+[0m [0mdisk {
          [32m+[0m [0m[1m[0mattach[0m[0m            = false
          [32m+[0m [0m[1m[0mcontroller_type[0m[0m   = "scsi"
          [32m+[0m [0m[1m[0mdatastore_id[0m[0m      = "<computed>"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m    = (known after apply)
          [32m+[0m [0m[1m[0mdisk_mode[0m[0m         = "persistent"
          [32m+[0m [0m[1m[0mdisk_sharing[0m[0m      = "sharingNone"
          [32m+[0m [0m[1m[0meagerly_scrub[0m[0m     = false
          [32m+[0m [0m[1m[0mio_limit[0m[0m          = -1
          [32m+[0m [0m[1m[0mio_reservation[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_count[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_level[0m[0m    = "normal"
          [32m+[0m [0m[1m[0mkeep_on_remove[0m[0m    = false
          [32m+[0m [0m[1m[0mkey[0m[0m               = 0
          [32m+[0m [0m[1m[0mlabel[0m[0m             = "os"
          [32m+[0m [0m[1m[0mpath[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0msize[0m[0m              = 254
          [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mthin_provisioned[0m[0m  = true
          [32m+[0m [0m[1m[0munit_number[0m[0m       = 0
          [32m+[0m [0m[1m[0muuid[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0mwrite_through[0m[0m     = false
        }
      [32m+[0m [0mdisk {
          [32m+[0m [0m[1m[0mattach[0m[0m            = false
          [32m+[0m [0m[1m[0mcontroller_type[0m[0m   = "scsi"
          [32m+[0m [0m[1m[0mdatastore_id[0m[0m      = "<computed>"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m    = (known after apply)
          [32m+[0m [0m[1m[0mdisk_mode[0m[0m         = "persistent"
          [32m+[0m [0m[1m[0mdisk_sharing[0m[0m      = "sharingNone"
          [32m+[0m [0m[1m[0meagerly_scrub[0m[0m     = false
          [32m+[0m [0m[1m[0mio_limit[0m[0m          = -1
          [32m+[0m [0m[1m[0mio_reservation[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_count[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_level[0m[0m    = "normal"
          [32m+[0m [0m[1m[0mkeep_on_remove[0m[0m    = false
          [32m+[0m [0m[1m[0mkey[0m[0m               = 0
          [32m+[0m [0m[1m[0mlabel[0m[0m             = "data"
          [32m+[0m [0m[1m[0mpath[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0msize[0m[0m              = 586
          [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mthin_provisioned[0m[0m  = true
          [32m+[0m [0m[1m[0munit_number[0m[0m       = 1
          [32m+[0m [0m[1m[0muuid[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0mwrite_through[0m[0m     = false
        }

      [32m+[0m [0mnetwork_interface {
          [32m+[0m [0m[1m[0madapter_type[0m[0m          = "vmxnet3"
          [32m+[0m [0m[1m[0mbandwidth_limit[0m[0m       = -1
          [32m+[0m [0m[1m[0mbandwidth_reservation[0m[0m = 0
          [32m+[0m [0m[1m[0mbandwidth_share_count[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mbandwidth_share_level[0m[0m = "normal"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m        = (known after apply)
          [32m+[0m [0m[1m[0mkey[0m[0m                   = (known after apply)
          [32m+[0m [0m[1m[0mmac_address[0m[0m           = (known after apply)
          [32m+[0m [0m[1m[0mnetwork_id[0m[0m            = "dvportgroup-44946"
        }
    }

[1m  # vsphere_virtual_machine.vm["u8-o2x-dev156"][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "vsphere_virtual_machine" "vm" {
      [32m+[0m [0m[1m[0mannotation[0m[0m                              = (known after apply)
      [32m+[0m [0m[1m[0mboot_retry_delay[0m[0m                        = 10000
      [32m+[0m [0m[1m[0mchange_version[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mcpu_limit[0m[0m                               = -1
      [32m+[0m [0m[1m[0mcpu_share_count[0m[0m                         = (known after apply)
      [32m+[0m [0m[1m[0mcpu_share_level[0m[0m                         = "normal"
      [32m+[0m [0m[1m[0mdatastore_id[0m[0m                            = "datastore-44551"
      [32m+[0m [0m[1m[0mdefault_ip_address[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mept_rvi_mode[0m[0m                            = "automatic"
      [32m+[0m [0m[1m[0mextra_config_reboot_required[0m[0m            = true
      [32m+[0m [0m[1m[0mfirmware[0m[0m                                = "bios"
      [32m+[0m [0m[1m[0mfolder[0m[0m                                  = "IAC"
      [32m+[0m [0m[1m[0mforce_power_off[0m[0m                         = true
      [32m+[0m [0m[1m[0mguest_id[0m[0m                                = "rhel8_64Guest"
      [32m+[0m [0m[1m[0mguest_ip_addresses[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mhardware_version[0m[0m                        = (known after apply)
      [32m+[0m [0m[1m[0mhost_system_id[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mhv_mode[0m[0m                                 = "hvAuto"
      [32m+[0m [0m[1m[0mid[0m[0m                                      = (known after apply)
      [32m+[0m [0m[1m[0mide_controller_count[0m[0m                    = 2
      [32m+[0m [0m[1m[0mimported[0m[0m                                = (known after apply)
      [32m+[0m [0m[1m[0mlatency_sensitivity[0m[0m                     = "normal"
      [32m+[0m [0m[1m[0mmemory[0m[0m                                  = 16384
      [32m+[0m [0m[1m[0mmemory_limit[0m[0m                            = -1
      [32m+[0m [0m[1m[0mmemory_share_count[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mmemory_share_level[0m[0m                      = "normal"
      [32m+[0m [0m[1m[0mmigrate_wait_timeout[0m[0m                    = 30
      [32m+[0m [0m[1m[0mmoid[0m[0m                                    = (known after apply)
      [32m+[0m [0m[1m[0mname[0m[0m                                    = "u8-o2x-dev156"
      [32m+[0m [0m[1m[0mnum_cores_per_socket[0m[0m                    = 1
      [32m+[0m [0m[1m[0mnum_cpus[0m[0m                                = 8
      [32m+[0m [0m[1m[0mpower_state[0m[0m                             = (known after apply)
      [32m+[0m [0m[1m[0mpoweron_timeout[0m[0m                         = 300
      [32m+[0m [0m[1m[0mreboot_required[0m[0m                         = (known after apply)
      [32m+[0m [0m[1m[0mresource_pool_id[0m[0m                        = "resgroup-44522"
      [32m+[0m [0m[1m[0mrun_tools_scripts_after_power_on[0m[0m        = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_after_resume[0m[0m          = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_before_guest_shutdown[0m[0m = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_before_guest_standby[0m[0m  = true
      [32m+[0m [0m[1m[0msata_controller_count[0m[0m                   = 0
      [32m+[0m [0m[1m[0mscsi_bus_sharing[0m[0m                        = "noSharing"
      [32m+[0m [0m[1m[0mscsi_controller_count[0m[0m                   = 1
      [32m+[0m [0m[1m[0mscsi_type[0m[0m                               = "pvscsi"
      [32m+[0m [0m[1m[0mshutdown_wait_timeout[0m[0m                   = 3
      [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m                       = (known after apply)
      [32m+[0m [0m[1m[0mswap_placement_policy[0m[0m                   = "inherit"
      [32m+[0m [0m[1m[0mtags[0m[0m                                    = [
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:7d472c8b-9b2c-49e1-95d1-7b383aca8067:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:a00d9809-5c0c-436a-89f5-4aeb2594df19:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:dab38fe6-d558-463a-9e4e-77672ee9c014:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:f21e0e80-72cd-4f36-8ebf-42d008362bef:GLOBAL",
        ]
      [32m+[0m [0m[1m[0mtools_upgrade_policy[0m[0m                    = "manual"
      [32m+[0m [0m[1m[0muuid[0m[0m                                    = (known after apply)
      [32m+[0m [0m[1m[0mvapp_transport[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mvmware_tools_status[0m[0m                     = (known after apply)
      [32m+[0m [0m[1m[0mvmx_path[0m[0m                                = (known after apply)
      [32m+[0m [0m[1m[0mwait_for_guest_ip_timeout[0m[0m               = 0
      [32m+[0m [0m[1m[0mwait_for_guest_net_routable[0m[0m             = true
      [32m+[0m [0m[1m[0mwait_for_guest_net_timeout[0m[0m              = 5

      [32m+[0m [0mclone {
          [32m+[0m [0m[1m[0mtemplate_uuid[0m[0m = "420aeedd-9fca-2936-fbcb-b49ec2e89171"
          [32m+[0m [0m[1m[0mtimeout[0m[0m       = 30

          [32m+[0m [0mcustomize {
              [32m+[0m [0m[1m[0mtimeout[0m[0m = 10

              [32m+[0m [0mlinux_options {
                  [32m+[0m [0m[1m[0mdomain[0m[0m       = "hcl.lmco.com"
                  [32m+[0m [0m[1m[0mhost_name[0m[0m    = "u8-o2x-dev156"
                  [32m+[0m [0m[1m[0mhw_clock_utc[0m[0m = true
                }

              [32m+[0m [0mnetwork_interface {}
            }
        }

      [32m+[0m [0mdisk {
          [32m+[0m [0m[1m[0mattach[0m[0m            = false
          [32m+[0m [0m[1m[0mcontroller_type[0m[0m   = "scsi"
          [32m+[0m [0m[1m[0mdatastore_id[0m[0m      = "<computed>"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m    = (known after apply)
          [32m+[0m [0m[1m[0mdisk_mode[0m[0m         = "persistent"
          [32m+[0m [0m[1m[0mdisk_sharing[0m[0m      = "sharingNone"
          [32m+[0m [0m[1m[0meagerly_scrub[0m[0m     = false
          [32m+[0m [0m[1m[0mio_limit[0m[0m          = -1
          [32m+[0m [0m[1m[0mio_reservation[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_count[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_level[0m[0m    = "normal"
          [32m+[0m [0m[1m[0mkeep_on_remove[0m[0m    = false
          [32m+[0m [0m[1m[0mkey[0m[0m               = 0
          [32m+[0m [0m[1m[0mlabel[0m[0m             = "os"
          [32m+[0m [0m[1m[0mpath[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0msize[0m[0m              = 254
          [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mthin_provisioned[0m[0m  = true
          [32m+[0m [0m[1m[0munit_number[0m[0m       = 0
          [32m+[0m [0m[1m[0muuid[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0mwrite_through[0m[0m     = false
        }
      [32m+[0m [0mdisk {
          [32m+[0m [0m[1m[0mattach[0m[0m            = false
          [32m+[0m [0m[1m[0mcontroller_type[0m[0m   = "scsi"
          [32m+[0m [0m[1m[0mdatastore_id[0m[0m      = "<computed>"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m    = (known after apply)
          [32m+[0m [0m[1m[0mdisk_mode[0m[0m         = "persistent"
          [32m+[0m [0m[1m[0mdisk_sharing[0m[0m      = "sharingNone"
          [32m+[0m [0m[1m[0meagerly_scrub[0m[0m     = false
          [32m+[0m [0m[1m[0mio_limit[0m[0m          = -1
          [32m+[0m [0m[1m[0mio_reservation[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_count[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_level[0m[0m    = "normal"
          [32m+[0m [0m[1m[0mkeep_on_remove[0m[0m    = false
          [32m+[0m [0m[1m[0mkey[0m[0m               = 0
          [32m+[0m [0m[1m[0mlabel[0m[0m             = "data"
          [32m+[0m [0m[1m[0mpath[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0msize[0m[0m              = 586
          [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mthin_provisioned[0m[0m  = true
          [32m+[0m [0m[1m[0munit_number[0m[0m       = 1
          [32m+[0m [0m[1m[0muuid[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0mwrite_through[0m[0m     = false
        }

      [32m+[0m [0mnetwork_interface {
          [32m+[0m [0m[1m[0madapter_type[0m[0m          = "vmxnet3"
          [32m+[0m [0m[1m[0mbandwidth_limit[0m[0m       = -1
          [32m+[0m [0m[1m[0mbandwidth_reservation[0m[0m = 0
          [32m+[0m [0m[1m[0mbandwidth_share_count[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mbandwidth_share_level[0m[0m = "normal"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m        = (known after apply)
          [32m+[0m [0m[1m[0mkey[0m[0m                   = (known after apply)
          [32m+[0m [0m[1m[0mmac_address[0m[0m           = (known after apply)
          [32m+[0m [0m[1m[0mnetwork_id[0m[0m            = "dvportgroup-44946"
        }
    }

[1m  # vsphere_virtual_machine.vm["u8-o2x-dev157"][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "vsphere_virtual_machine" "vm" {
      [32m+[0m [0m[1m[0mannotation[0m[0m                              = (known after apply)
      [32m+[0m [0m[1m[0mboot_retry_delay[0m[0m                        = 10000
      [32m+[0m [0m[1m[0mchange_version[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mcpu_limit[0m[0m                               = -1
      [32m+[0m [0m[1m[0mcpu_share_count[0m[0m                         = (known after apply)
      [32m+[0m [0m[1m[0mcpu_share_level[0m[0m                         = "normal"
      [32m+[0m [0m[1m[0mdatastore_id[0m[0m                            = "datastore-44551"
      [32m+[0m [0m[1m[0mdefault_ip_address[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mept_rvi_mode[0m[0m                            = "automatic"
      [32m+[0m [0m[1m[0mextra_config_reboot_required[0m[0m            = true
      [32m+[0m [0m[1m[0mfirmware[0m[0m                                = "bios"
      [32m+[0m [0m[1m[0mfolder[0m[0m                                  = "IAC"
      [32m+[0m [0m[1m[0mforce_power_off[0m[0m                         = true
      [32m+[0m [0m[1m[0mguest_id[0m[0m                                = "rhel8_64Guest"
      [32m+[0m [0m[1m[0mguest_ip_addresses[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mhardware_version[0m[0m                        = (known after apply)
      [32m+[0m [0m[1m[0mhost_system_id[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mhv_mode[0m[0m                                 = "hvAuto"
      [32m+[0m [0m[1m[0mid[0m[0m                                      = (known after apply)
      [32m+[0m [0m[1m[0mide_controller_count[0m[0m                    = 2
      [32m+[0m [0m[1m[0mimported[0m[0m                                = (known after apply)
      [32m+[0m [0m[1m[0mlatency_sensitivity[0m[0m                     = "normal"
      [32m+[0m [0m[1m[0mmemory[0m[0m                                  = 16384
      [32m+[0m [0m[1m[0mmemory_limit[0m[0m                            = -1
      [32m+[0m [0m[1m[0mmemory_share_count[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mmemory_share_level[0m[0m                      = "normal"
      [32m+[0m [0m[1m[0mmigrate_wait_timeout[0m[0m                    = 30
      [32m+[0m [0m[1m[0mmoid[0m[0m                                    = (known after apply)
      [32m+[0m [0m[1m[0mname[0m[0m                                    = "u8-o2x-dev157"
      [32m+[0m [0m[1m[0mnum_cores_per_socket[0m[0m                    = 1
      [32m+[0m [0m[1m[0mnum_cpus[0m[0m                                = 8
      [32m+[0m [0m[1m[0mpower_state[0m[0m                             = (known after apply)
      [32m+[0m [0m[1m[0mpoweron_timeout[0m[0m                         = 300
      [32m+[0m [0m[1m[0mreboot_required[0m[0m                         = (known after apply)
      [32m+[0m [0m[1m[0mresource_pool_id[0m[0m                        = "resgroup-44522"
      [32m+[0m [0m[1m[0mrun_tools_scripts_after_power_on[0m[0m        = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_after_resume[0m[0m          = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_before_guest_shutdown[0m[0m = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_before_guest_standby[0m[0m  = true
      [32m+[0m [0m[1m[0msata_controller_count[0m[0m                   = 0
      [32m+[0m [0m[1m[0mscsi_bus_sharing[0m[0m                        = "noSharing"
      [32m+[0m [0m[1m[0mscsi_controller_count[0m[0m                   = 1
      [32m+[0m [0m[1m[0mscsi_type[0m[0m                               = "pvscsi"
      [32m+[0m [0m[1m[0mshutdown_wait_timeout[0m[0m                   = 3
      [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m                       = (known after apply)
      [32m+[0m [0m[1m[0mswap_placement_policy[0m[0m                   = "inherit"
      [32m+[0m [0m[1m[0mtags[0m[0m                                    = [
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:7d472c8b-9b2c-49e1-95d1-7b383aca8067:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:a00d9809-5c0c-436a-89f5-4aeb2594df19:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:dab38fe6-d558-463a-9e4e-77672ee9c014:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:f21e0e80-72cd-4f36-8ebf-42d008362bef:GLOBAL",
        ]
      [32m+[0m [0m[1m[0mtools_upgrade_policy[0m[0m                    = "manual"
      [32m+[0m [0m[1m[0muuid[0m[0m                                    = (known after apply)
      [32m+[0m [0m[1m[0mvapp_transport[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mvmware_tools_status[0m[0m                     = (known after apply)
      [32m+[0m [0m[1m[0mvmx_path[0m[0m                                = (known after apply)
      [32m+[0m [0m[1m[0mwait_for_guest_ip_timeout[0m[0m               = 0
      [32m+[0m [0m[1m[0mwait_for_guest_net_routable[0m[0m             = true
      [32m+[0m [0m[1m[0mwait_for_guest_net_timeout[0m[0m              = 5

      [32m+[0m [0mclone {
          [32m+[0m [0m[1m[0mtemplate_uuid[0m[0m = "420aeedd-9fca-2936-fbcb-b49ec2e89171"
          [32m+[0m [0m[1m[0mtimeout[0m[0m       = 30

          [32m+[0m [0mcustomize {
              [32m+[0m [0m[1m[0mtimeout[0m[0m = 10

              [32m+[0m [0mlinux_options {
                  [32m+[0m [0m[1m[0mdomain[0m[0m       = "hcl.lmco.com"
                  [32m+[0m [0m[1m[0mhost_name[0m[0m    = "u8-o2x-dev157"
                  [32m+[0m [0m[1m[0mhw_clock_utc[0m[0m = true
                }

              [32m+[0m [0mnetwork_interface {}
            }
        }

      [32m+[0m [0mdisk {
          [32m+[0m [0m[1m[0mattach[0m[0m            = false
          [32m+[0m [0m[1m[0mcontroller_type[0m[0m   = "scsi"
          [32m+[0m [0m[1m[0mdatastore_id[0m[0m      = "<computed>"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m    = (known after apply)
          [32m+[0m [0m[1m[0mdisk_mode[0m[0m         = "persistent"
          [32m+[0m [0m[1m[0mdisk_sharing[0m[0m      = "sharingNone"
          [32m+[0m [0m[1m[0meagerly_scrub[0m[0m     = false
          [32m+[0m [0m[1m[0mio_limit[0m[0m          = -1
          [32m+[0m [0m[1m[0mio_reservation[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_count[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_level[0m[0m    = "normal"
          [32m+[0m [0m[1m[0mkeep_on_remove[0m[0m    = false
          [32m+[0m [0m[1m[0mkey[0m[0m               = 0
          [32m+[0m [0m[1m[0mlabel[0m[0m             = "os"
          [32m+[0m [0m[1m[0mpath[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0msize[0m[0m              = 254
          [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mthin_provisioned[0m[0m  = true
          [32m+[0m [0m[1m[0munit_number[0m[0m       = 0
          [32m+[0m [0m[1m[0muuid[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0mwrite_through[0m[0m     = false
        }
      [32m+[0m [0mdisk {
          [32m+[0m [0m[1m[0mattach[0m[0m            = false
          [32m+[0m [0m[1m[0mcontroller_type[0m[0m   = "scsi"
          [32m+[0m [0m[1m[0mdatastore_id[0m[0m      = "<computed>"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m    = (known after apply)
          [32m+[0m [0m[1m[0mdisk_mode[0m[0m         = "persistent"
          [32m+[0m [0m[1m[0mdisk_sharing[0m[0m      = "sharingNone"
          [32m+[0m [0m[1m[0meagerly_scrub[0m[0m     = false
          [32m+[0m [0m[1m[0mio_limit[0m[0m          = -1
          [32m+[0m [0m[1m[0mio_reservation[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_count[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_level[0m[0m    = "normal"
          [32m+[0m [0m[1m[0mkeep_on_remove[0m[0m    = false
          [32m+[0m [0m[1m[0mkey[0m[0m               = 0
          [32m+[0m [0m[1m[0mlabel[0m[0m             = "data"
          [32m+[0m [0m[1m[0mpath[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0msize[0m[0m              = 586
          [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mthin_provisioned[0m[0m  = true
          [32m+[0m [0m[1m[0munit_number[0m[0m       = 1
          [32m+[0m [0m[1m[0muuid[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0mwrite_through[0m[0m     = false
        }

      [32m+[0m [0mnetwork_interface {
          [32m+[0m [0m[1m[0madapter_type[0m[0m          = "vmxnet3"
          [32m+[0m [0m[1m[0mbandwidth_limit[0m[0m       = -1
          [32m+[0m [0m[1m[0mbandwidth_reservation[0m[0m = 0
          [32m+[0m [0m[1m[0mbandwidth_share_count[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mbandwidth_share_level[0m[0m = "normal"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m        = (known after apply)
          [32m+[0m [0m[1m[0mkey[0m[0m                   = (known after apply)
          [32m+[0m [0m[1m[0mmac_address[0m[0m           = (known after apply)
          [32m+[0m [0m[1m[0mnetwork_id[0m[0m            = "dvportgroup-44946"
        }
    }

[1m  # vsphere_virtual_machine.vm["u8-o2x-dev159"][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "vsphere_virtual_machine" "vm" {
      [32m+[0m [0m[1m[0mannotation[0m[0m                              = (known after apply)
      [32m+[0m [0m[1m[0mboot_retry_delay[0m[0m                        = 10000
      [32m+[0m [0m[1m[0mchange_version[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mcpu_limit[0m[0m                               = -1
      [32m+[0m [0m[1m[0mcpu_share_count[0m[0m                         = (known after apply)
      [32m+[0m [0m[1m[0mcpu_share_level[0m[0m                         = "normal"
      [32m+[0m [0m[1m[0mdatastore_id[0m[0m                            = "datastore-44551"
      [32m+[0m [0m[1m[0mdefault_ip_address[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mept_rvi_mode[0m[0m                            = "automatic"
      [32m+[0m [0m[1m[0mextra_config_reboot_required[0m[0m            = true
      [32m+[0m [0m[1m[0mfirmware[0m[0m                                = "bios"
      [32m+[0m [0m[1m[0mfolder[0m[0m                                  = "IAC"
      [32m+[0m [0m[1m[0mforce_power_off[0m[0m                         = true
      [32m+[0m [0m[1m[0mguest_id[0m[0m                                = "rhel8_64Guest"
      [32m+[0m [0m[1m[0mguest_ip_addresses[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mhardware_version[0m[0m                        = (known after apply)
      [32m+[0m [0m[1m[0mhost_system_id[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mhv_mode[0m[0m                                 = "hvAuto"
      [32m+[0m [0m[1m[0mid[0m[0m                                      = (known after apply)
      [32m+[0m [0m[1m[0mide_controller_count[0m[0m                    = 2
      [32m+[0m [0m[1m[0mimported[0m[0m                                = (known after apply)
      [32m+[0m [0m[1m[0mlatency_sensitivity[0m[0m                     = "normal"
      [32m+[0m [0m[1m[0mmemory[0m[0m                                  = 16384
      [32m+[0m [0m[1m[0mmemory_limit[0m[0m                            = -1
      [32m+[0m [0m[1m[0mmemory_share_count[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mmemory_share_level[0m[0m                      = "normal"
      [32m+[0m [0m[1m[0mmigrate_wait_timeout[0m[0m                    = 30
      [32m+[0m [0m[1m[0mmoid[0m[0m                                    = (known after apply)
      [32m+[0m [0m[1m[0mname[0m[0m                                    = "u8-o2x-dev159"
      [32m+[0m [0m[1m[0mnum_cores_per_socket[0m[0m                    = 1
      [32m+[0m [0m[1m[0mnum_cpus[0m[0m                                = 8
      [32m+[0m [0m[1m[0mpower_state[0m[0m                             = (known after apply)
      [32m+[0m [0m[1m[0mpoweron_timeout[0m[0m                         = 300
      [32m+[0m [0m[1m[0mreboot_required[0m[0m                         = (known after apply)
      [32m+[0m [0m[1m[0mresource_pool_id[0m[0m                        = "resgroup-44522"
      [32m+[0m [0m[1m[0mrun_tools_scripts_after_power_on[0m[0m        = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_after_resume[0m[0m          = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_before_guest_shutdown[0m[0m = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_before_guest_standby[0m[0m  = true
      [32m+[0m [0m[1m[0msata_controller_count[0m[0m                   = 0
      [32m+[0m [0m[1m[0mscsi_bus_sharing[0m[0m                        = "noSharing"
      [32m+[0m [0m[1m[0mscsi_controller_count[0m[0m                   = 1
      [32m+[0m [0m[1m[0mscsi_type[0m[0m                               = "pvscsi"
      [32m+[0m [0m[1m[0mshutdown_wait_timeout[0m[0m                   = 3
      [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m                       = (known after apply)
      [32m+[0m [0m[1m[0mswap_placement_policy[0m[0m                   = "inherit"
      [32m+[0m [0m[1m[0mtags[0m[0m                                    = [
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:7d472c8b-9b2c-49e1-95d1-7b383aca8067:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:a00d9809-5c0c-436a-89f5-4aeb2594df19:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:dab38fe6-d558-463a-9e4e-77672ee9c014:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:f21e0e80-72cd-4f36-8ebf-42d008362bef:GLOBAL",
        ]
      [32m+[0m [0m[1m[0mtools_upgrade_policy[0m[0m                    = "manual"
      [32m+[0m [0m[1m[0muuid[0m[0m                                    = (known after apply)
      [32m+[0m [0m[1m[0mvapp_transport[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mvmware_tools_status[0m[0m                     = (known after apply)
      [32m+[0m [0m[1m[0mvmx_path[0m[0m                                = (known after apply)
      [32m+[0m [0m[1m[0mwait_for_guest_ip_timeout[0m[0m               = 0
      [32m+[0m [0m[1m[0mwait_for_guest_net_routable[0m[0m             = true
      [32m+[0m [0m[1m[0mwait_for_guest_net_timeout[0m[0m              = 5

      [32m+[0m [0mclone {
          [32m+[0m [0m[1m[0mtemplate_uuid[0m[0m = "420aeedd-9fca-2936-fbcb-b49ec2e89171"
          [32m+[0m [0m[1m[0mtimeout[0m[0m       = 30

          [32m+[0m [0mcustomize {
              [32m+[0m [0m[1m[0mtimeout[0m[0m = 10

              [32m+[0m [0mlinux_options {
                  [32m+[0m [0m[1m[0mdomain[0m[0m       = "hcl.lmco.com"
                  [32m+[0m [0m[1m[0mhost_name[0m[0m    = "u8-o2x-dev159"
                  [32m+[0m [0m[1m[0mhw_clock_utc[0m[0m = true
                }

              [32m+[0m [0mnetwork_interface {}
            }
        }

      [32m+[0m [0mdisk {
          [32m+[0m [0m[1m[0mattach[0m[0m            = false
          [32m+[0m [0m[1m[0mcontroller_type[0m[0m   = "scsi"
          [32m+[0m [0m[1m[0mdatastore_id[0m[0m      = "<computed>"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m    = (known after apply)
          [32m+[0m [0m[1m[0mdisk_mode[0m[0m         = "persistent"
          [32m+[0m [0m[1m[0mdisk_sharing[0m[0m      = "sharingNone"
          [32m+[0m [0m[1m[0meagerly_scrub[0m[0m     = false
          [32m+[0m [0m[1m[0mio_limit[0m[0m          = -1
          [32m+[0m [0m[1m[0mio_reservation[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_count[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_level[0m[0m    = "normal"
          [32m+[0m [0m[1m[0mkeep_on_remove[0m[0m    = false
          [32m+[0m [0m[1m[0mkey[0m[0m               = 0
          [32m+[0m [0m[1m[0mlabel[0m[0m             = "os"
          [32m+[0m [0m[1m[0mpath[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0msize[0m[0m              = 254
          [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mthin_provisioned[0m[0m  = true
          [32m+[0m [0m[1m[0munit_number[0m[0m       = 0
          [32m+[0m [0m[1m[0muuid[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0mwrite_through[0m[0m     = false
        }
      [32m+[0m [0mdisk {
          [32m+[0m [0m[1m[0mattach[0m[0m            = false
          [32m+[0m [0m[1m[0mcontroller_type[0m[0m   = "scsi"
          [32m+[0m [0m[1m[0mdatastore_id[0m[0m      = "<computed>"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m    = (known after apply)
          [32m+[0m [0m[1m[0mdisk_mode[0m[0m         = "persistent"
          [32m+[0m [0m[1m[0mdisk_sharing[0m[0m      = "sharingNone"
          [32m+[0m [0m[1m[0meagerly_scrub[0m[0m     = false
          [32m+[0m [0m[1m[0mio_limit[0m[0m          = -1
          [32m+[0m [0m[1m[0mio_reservation[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_count[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_level[0m[0m    = "normal"
          [32m+[0m [0m[1m[0mkeep_on_remove[0m[0m    = false
          [32m+[0m [0m[1m[0mkey[0m[0m               = 0
          [32m+[0m [0m[1m[0mlabel[0m[0m             = "data"
          [32m+[0m [0m[1m[0mpath[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0msize[0m[0m              = 586
          [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mthin_provisioned[0m[0m  = true
          [32m+[0m [0m[1m[0munit_number[0m[0m       = 1
          [32m+[0m [0m[1m[0muuid[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0mwrite_through[0m[0m     = false
        }

      [32m+[0m [0mnetwork_interface {
          [32m+[0m [0m[1m[0madapter_type[0m[0m          = "vmxnet3"
          [32m+[0m [0m[1m[0mbandwidth_limit[0m[0m       = -1
          [32m+[0m [0m[1m[0mbandwidth_reservation[0m[0m = 0
          [32m+[0m [0m[1m[0mbandwidth_share_count[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mbandwidth_share_level[0m[0m = "normal"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m        = (known after apply)
          [32m+[0m [0m[1m[0mkey[0m[0m                   = (known after apply)
          [32m+[0m [0m[1m[0mmac_address[0m[0m           = (known after apply)
          [32m+[0m [0m[1m[0mnetwork_id[0m[0m            = "dvportgroup-44946"
        }
    }

[1m  # vsphere_virtual_machine.vm["u8-o2x-dev173"][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "vsphere_virtual_machine" "vm" {
      [32m+[0m [0m[1m[0mannotation[0m[0m                              = (known after apply)
      [32m+[0m [0m[1m[0mboot_retry_delay[0m[0m                        = 10000
      [32m+[0m [0m[1m[0mchange_version[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mcpu_limit[0m[0m                               = -1
      [32m+[0m [0m[1m[0mcpu_share_count[0m[0m                         = (known after apply)
      [32m+[0m [0m[1m[0mcpu_share_level[0m[0m                         = "normal"
      [32m+[0m [0m[1m[0mdatastore_id[0m[0m                            = "datastore-44551"
      [32m+[0m [0m[1m[0mdefault_ip_address[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mept_rvi_mode[0m[0m                            = "automatic"
      [32m+[0m [0m[1m[0mextra_config_reboot_required[0m[0m            = true
      [32m+[0m [0m[1m[0mfirmware[0m[0m                                = "bios"
      [32m+[0m [0m[1m[0mfolder[0m[0m                                  = "IAC"
      [32m+[0m [0m[1m[0mforce_power_off[0m[0m                         = true
      [32m+[0m [0m[1m[0mguest_id[0m[0m                                = "rhel8_64Guest"
      [32m+[0m [0m[1m[0mguest_ip_addresses[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mhardware_version[0m[0m                        = (known after apply)
      [32m+[0m [0m[1m[0mhost_system_id[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mhv_mode[0m[0m                                 = "hvAuto"
      [32m+[0m [0m[1m[0mid[0m[0m                                      = (known after apply)
      [32m+[0m [0m[1m[0mide_controller_count[0m[0m                    = 2
      [32m+[0m [0m[1m[0mimported[0m[0m                                = (known after apply)
      [32m+[0m [0m[1m[0mlatency_sensitivity[0m[0m                     = "normal"
      [32m+[0m [0m[1m[0mmemory[0m[0m                                  = 16384
      [32m+[0m [0m[1m[0mmemory_limit[0m[0m                            = -1
      [32m+[0m [0m[1m[0mmemory_share_count[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mmemory_share_level[0m[0m                      = "normal"
      [32m+[0m [0m[1m[0mmigrate_wait_timeout[0m[0m                    = 30
      [32m+[0m [0m[1m[0mmoid[0m[0m                                    = (known after apply)
      [32m+[0m [0m[1m[0mname[0m[0m                                    = "u8-o2x-dev173"
      [32m+[0m [0m[1m[0mnum_cores_per_socket[0m[0m                    = 1
      [32m+[0m [0m[1m[0mnum_cpus[0m[0m                                = 8
      [32m+[0m [0m[1m[0mpower_state[0m[0m                             = (known after apply)
      [32m+[0m [0m[1m[0mpoweron_timeout[0m[0m                         = 300
      [32m+[0m [0m[1m[0mreboot_required[0m[0m                         = (known after apply)
      [32m+[0m [0m[1m[0mresource_pool_id[0m[0m                        = "resgroup-44522"
      [32m+[0m [0m[1m[0mrun_tools_scripts_after_power_on[0m[0m        = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_after_resume[0m[0m          = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_before_guest_shutdown[0m[0m = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_before_guest_standby[0m[0m  = true
      [32m+[0m [0m[1m[0msata_controller_count[0m[0m                   = 0
      [32m+[0m [0m[1m[0mscsi_bus_sharing[0m[0m                        = "noSharing"
      [32m+[0m [0m[1m[0mscsi_controller_count[0m[0m                   = 1
      [32m+[0m [0m[1m[0mscsi_type[0m[0m                               = "pvscsi"
      [32m+[0m [0m[1m[0mshutdown_wait_timeout[0m[0m                   = 3
      [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m                       = (known after apply)
      [32m+[0m [0m[1m[0mswap_placement_policy[0m[0m                   = "inherit"
      [32m+[0m [0m[1m[0mtags[0m[0m                                    = [
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:7d472c8b-9b2c-49e1-95d1-7b383aca8067:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:a00d9809-5c0c-436a-89f5-4aeb2594df19:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:dab38fe6-d558-463a-9e4e-77672ee9c014:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:f21e0e80-72cd-4f36-8ebf-42d008362bef:GLOBAL",
        ]
      [32m+[0m [0m[1m[0mtools_upgrade_policy[0m[0m                    = "manual"
      [32m+[0m [0m[1m[0muuid[0m[0m                                    = (known after apply)
      [32m+[0m [0m[1m[0mvapp_transport[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mvmware_tools_status[0m[0m                     = (known after apply)
      [32m+[0m [0m[1m[0mvmx_path[0m[0m                                = (known after apply)
      [32m+[0m [0m[1m[0mwait_for_guest_ip_timeout[0m[0m               = 0
      [32m+[0m [0m[1m[0mwait_for_guest_net_routable[0m[0m             = true
      [32m+[0m [0m[1m[0mwait_for_guest_net_timeout[0m[0m              = 5

      [32m+[0m [0mclone {
          [32m+[0m [0m[1m[0mtemplate_uuid[0m[0m = "420aeedd-9fca-2936-fbcb-b49ec2e89171"
          [32m+[0m [0m[1m[0mtimeout[0m[0m       = 30

          [32m+[0m [0mcustomize {
              [32m+[0m [0m[1m[0mtimeout[0m[0m = 10

              [32m+[0m [0mlinux_options {
                  [32m+[0m [0m[1m[0mdomain[0m[0m       = "hcl.lmco.com"
                  [32m+[0m [0m[1m[0mhost_name[0m[0m    = "u8-o2x-dev173"
                  [32m+[0m [0m[1m[0mhw_clock_utc[0m[0m = true
                }

              [32m+[0m [0mnetwork_interface {}
            }
        }

      [32m+[0m [0mdisk {
          [32m+[0m [0m[1m[0mattach[0m[0m            = false
          [32m+[0m [0m[1m[0mcontroller_type[0m[0m   = "scsi"
          [32m+[0m [0m[1m[0mdatastore_id[0m[0m      = "<computed>"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m    = (known after apply)
          [32m+[0m [0m[1m[0mdisk_mode[0m[0m         = "persistent"
          [32m+[0m [0m[1m[0mdisk_sharing[0m[0m      = "sharingNone"
          [32m+[0m [0m[1m[0meagerly_scrub[0m[0m     = false
          [32m+[0m [0m[1m[0mio_limit[0m[0m          = -1
          [32m+[0m [0m[1m[0mio_reservation[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_count[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_level[0m[0m    = "normal"
          [32m+[0m [0m[1m[0mkeep_on_remove[0m[0m    = false
          [32m+[0m [0m[1m[0mkey[0m[0m               = 0
          [32m+[0m [0m[1m[0mlabel[0m[0m             = "os"
          [32m+[0m [0m[1m[0mpath[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0msize[0m[0m              = 254
          [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mthin_provisioned[0m[0m  = true
          [32m+[0m [0m[1m[0munit_number[0m[0m       = 0
          [32m+[0m [0m[1m[0muuid[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0mwrite_through[0m[0m     = false
        }
      [32m+[0m [0mdisk {
          [32m+[0m [0m[1m[0mattach[0m[0m            = false
          [32m+[0m [0m[1m[0mcontroller_type[0m[0m   = "scsi"
          [32m+[0m [0m[1m[0mdatastore_id[0m[0m      = "<computed>"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m    = (known after apply)
          [32m+[0m [0m[1m[0mdisk_mode[0m[0m         = "persistent"
          [32m+[0m [0m[1m[0mdisk_sharing[0m[0m      = "sharingNone"
          [32m+[0m [0m[1m[0meagerly_scrub[0m[0m     = false
          [32m+[0m [0m[1m[0mio_limit[0m[0m          = -1
          [32m+[0m [0m[1m[0mio_reservation[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_count[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_level[0m[0m    = "normal"
          [32m+[0m [0m[1m[0mkeep_on_remove[0m[0m    = false
          [32m+[0m [0m[1m[0mkey[0m[0m               = 0
          [32m+[0m [0m[1m[0mlabel[0m[0m             = "data"
          [32m+[0m [0m[1m[0mpath[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0msize[0m[0m              = 586
          [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mthin_provisioned[0m[0m  = true
          [32m+[0m [0m[1m[0munit_number[0m[0m       = 1
          [32m+[0m [0m[1m[0muuid[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0mwrite_through[0m[0m     = false
        }

      [32m+[0m [0mnetwork_interface {
          [32m+[0m [0m[1m[0madapter_type[0m[0m          = "vmxnet3"
          [32m+[0m [0m[1m[0mbandwidth_limit[0m[0m       = -1
          [32m+[0m [0m[1m[0mbandwidth_reservation[0m[0m = 0
          [32m+[0m [0m[1m[0mbandwidth_share_count[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mbandwidth_share_level[0m[0m = "normal"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m        = (known after apply)
          [32m+[0m [0m[1m[0mkey[0m[0m                   = (known after apply)
          [32m+[0m [0m[1m[0mmac_address[0m[0m           = (known after apply)
          [32m+[0m [0m[1m[0mnetwork_id[0m[0m            = "dvportgroup-44946"
        }
    }

[1m  # vsphere_virtual_machine.vm["u8-o2x-dev176"][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "vsphere_virtual_machine" "vm" {
      [32m+[0m [0m[1m[0mannotation[0m[0m                              = (known after apply)
      [32m+[0m [0m[1m[0mboot_retry_delay[0m[0m                        = 10000
      [32m+[0m [0m[1m[0mchange_version[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mcpu_limit[0m[0m                               = -1
      [32m+[0m [0m[1m[0mcpu_share_count[0m[0m                         = (known after apply)
      [32m+[0m [0m[1m[0mcpu_share_level[0m[0m                         = "normal"
      [32m+[0m [0m[1m[0mdatastore_id[0m[0m                            = "datastore-44551"
      [32m+[0m [0m[1m[0mdefault_ip_address[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mept_rvi_mode[0m[0m                            = "automatic"
      [32m+[0m [0m[1m[0mextra_config_reboot_required[0m[0m            = true
      [32m+[0m [0m[1m[0mfirmware[0m[0m                                = "bios"
      [32m+[0m [0m[1m[0mfolder[0m[0m                                  = "IAC"
      [32m+[0m [0m[1m[0mforce_power_off[0m[0m                         = true
      [32m+[0m [0m[1m[0mguest_id[0m[0m                                = "rhel8_64Guest"
      [32m+[0m [0m[1m[0mguest_ip_addresses[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mhardware_version[0m[0m                        = (known after apply)
      [32m+[0m [0m[1m[0mhost_system_id[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mhv_mode[0m[0m                                 = "hvAuto"
      [32m+[0m [0m[1m[0mid[0m[0m                                      = (known after apply)
      [32m+[0m [0m[1m[0mide_controller_count[0m[0m                    = 2
      [32m+[0m [0m[1m[0mimported[0m[0m                                = (known after apply)
      [32m+[0m [0m[1m[0mlatency_sensitivity[0m[0m                     = "normal"
      [32m+[0m [0m[1m[0mmemory[0m[0m                                  = 16384
      [32m+[0m [0m[1m[0mmemory_limit[0m[0m                            = -1
      [32m+[0m [0m[1m[0mmemory_share_count[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mmemory_share_level[0m[0m                      = "normal"
      [32m+[0m [0m[1m[0mmigrate_wait_timeout[0m[0m                    = 30
      [32m+[0m [0m[1m[0mmoid[0m[0m                                    = (known after apply)
      [32m+[0m [0m[1m[0mname[0m[0m                                    = "u8-o2x-dev176"
      [32m+[0m [0m[1m[0mnum_cores_per_socket[0m[0m                    = 1
      [32m+[0m [0m[1m[0mnum_cpus[0m[0m                                = 8
      [32m+[0m [0m[1m[0mpower_state[0m[0m                             = (known after apply)
      [32m+[0m [0m[1m[0mpoweron_timeout[0m[0m                         = 300
      [32m+[0m [0m[1m[0mreboot_required[0m[0m                         = (known after apply)
      [32m+[0m [0m[1m[0mresource_pool_id[0m[0m                        = "resgroup-44522"
      [32m+[0m [0m[1m[0mrun_tools_scripts_after_power_on[0m[0m        = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_after_resume[0m[0m          = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_before_guest_shutdown[0m[0m = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_before_guest_standby[0m[0m  = true
      [32m+[0m [0m[1m[0msata_controller_count[0m[0m                   = 0
      [32m+[0m [0m[1m[0mscsi_bus_sharing[0m[0m                        = "noSharing"
      [32m+[0m [0m[1m[0mscsi_controller_count[0m[0m                   = 1
      [32m+[0m [0m[1m[0mscsi_type[0m[0m                               = "pvscsi"
      [32m+[0m [0m[1m[0mshutdown_wait_timeout[0m[0m                   = 3
      [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m                       = (known after apply)
      [32m+[0m [0m[1m[0mswap_placement_policy[0m[0m                   = "inherit"
      [32m+[0m [0m[1m[0mtags[0m[0m                                    = [
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:7d472c8b-9b2c-49e1-95d1-7b383aca8067:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:a00d9809-5c0c-436a-89f5-4aeb2594df19:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:dab38fe6-d558-463a-9e4e-77672ee9c014:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:f21e0e80-72cd-4f36-8ebf-42d008362bef:GLOBAL",
        ]
      [32m+[0m [0m[1m[0mtools_upgrade_policy[0m[0m                    = "manual"
      [32m+[0m [0m[1m[0muuid[0m[0m                                    = (known after apply)
      [32m+[0m [0m[1m[0mvapp_transport[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mvmware_tools_status[0m[0m                     = (known after apply)
      [32m+[0m [0m[1m[0mvmx_path[0m[0m                                = (known after apply)
      [32m+[0m [0m[1m[0mwait_for_guest_ip_timeout[0m[0m               = 0
      [32m+[0m [0m[1m[0mwait_for_guest_net_routable[0m[0m             = true
      [32m+[0m [0m[1m[0mwait_for_guest_net_timeout[0m[0m              = 5

      [32m+[0m [0mclone {
          [32m+[0m [0m[1m[0mtemplate_uuid[0m[0m = "420aeedd-9fca-2936-fbcb-b49ec2e89171"
          [32m+[0m [0m[1m[0mtimeout[0m[0m       = 30

          [32m+[0m [0mcustomize {
              [32m+[0m [0m[1m[0mtimeout[0m[0m = 10

              [32m+[0m [0mlinux_options {
                  [32m+[0m [0m[1m[0mdomain[0m[0m       = "hcl.lmco.com"
                  [32m+[0m [0m[1m[0mhost_name[0m[0m    = "u8-o2x-dev176"
                  [32m+[0m [0m[1m[0mhw_clock_utc[0m[0m = true
                }

              [32m+[0m [0mnetwork_interface {}
            }
        }

      [32m+[0m [0mdisk {
          [32m+[0m [0m[1m[0mattach[0m[0m            = false
          [32m+[0m [0m[1m[0mcontroller_type[0m[0m   = "scsi"
          [32m+[0m [0m[1m[0mdatastore_id[0m[0m      = "<computed>"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m    = (known after apply)
          [32m+[0m [0m[1m[0mdisk_mode[0m[0m         = "persistent"
          [32m+[0m [0m[1m[0mdisk_sharing[0m[0m      = "sharingNone"
          [32m+[0m [0m[1m[0meagerly_scrub[0m[0m     = false
          [32m+[0m [0m[1m[0mio_limit[0m[0m          = -1
          [32m+[0m [0m[1m[0mio_reservation[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_count[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_level[0m[0m    = "normal"
          [32m+[0m [0m[1m[0mkeep_on_remove[0m[0m    = false
          [32m+[0m [0m[1m[0mkey[0m[0m               = 0
          [32m+[0m [0m[1m[0mlabel[0m[0m             = "os"
          [32m+[0m [0m[1m[0mpath[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0msize[0m[0m              = 254
          [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mthin_provisioned[0m[0m  = true
          [32m+[0m [0m[1m[0munit_number[0m[0m       = 0
          [32m+[0m [0m[1m[0muuid[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0mwrite_through[0m[0m     = false
        }
      [32m+[0m [0mdisk {
          [32m+[0m [0m[1m[0mattach[0m[0m            = false
          [32m+[0m [0m[1m[0mcontroller_type[0m[0m   = "scsi"
          [32m+[0m [0m[1m[0mdatastore_id[0m[0m      = "<computed>"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m    = (known after apply)
          [32m+[0m [0m[1m[0mdisk_mode[0m[0m         = "persistent"
          [32m+[0m [0m[1m[0mdisk_sharing[0m[0m      = "sharingNone"
          [32m+[0m [0m[1m[0meagerly_scrub[0m[0m     = false
          [32m+[0m [0m[1m[0mio_limit[0m[0m          = -1
          [32m+[0m [0m[1m[0mio_reservation[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_count[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_level[0m[0m    = "normal"
          [32m+[0m [0m[1m[0mkeep_on_remove[0m[0m    = false
          [32m+[0m [0m[1m[0mkey[0m[0m               = 0
          [32m+[0m [0m[1m[0mlabel[0m[0m             = "data"
          [32m+[0m [0m[1m[0mpath[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0msize[0m[0m              = 586
          [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mthin_provisioned[0m[0m  = true
          [32m+[0m [0m[1m[0munit_number[0m[0m       = 1
          [32m+[0m [0m[1m[0muuid[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0mwrite_through[0m[0m     = false
        }

      [32m+[0m [0mnetwork_interface {
          [32m+[0m [0m[1m[0madapter_type[0m[0m          = "vmxnet3"
          [32m+[0m [0m[1m[0mbandwidth_limit[0m[0m       = -1
          [32m+[0m [0m[1m[0mbandwidth_reservation[0m[0m = 0
          [32m+[0m [0m[1m[0mbandwidth_share_count[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mbandwidth_share_level[0m[0m = "normal"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m        = (known after apply)
          [32m+[0m [0m[1m[0mkey[0m[0m                   = (known after apply)
          [32m+[0m [0m[1m[0mmac_address[0m[0m           = (known after apply)
          [32m+[0m [0m[1m[0mnetwork_id[0m[0m            = "dvportgroup-44946"
        }
    }

[1m  # vsphere_virtual_machine.vm["u8-o2x-dev180"][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "vsphere_virtual_machine" "vm" {
      [32m+[0m [0m[1m[0mannotation[0m[0m                              = (known after apply)
      [32m+[0m [0m[1m[0mboot_retry_delay[0m[0m                        = 10000
      [32m+[0m [0m[1m[0mchange_version[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mcpu_limit[0m[0m                               = -1
      [32m+[0m [0m[1m[0mcpu_share_count[0m[0m                         = (known after apply)
      [32m+[0m [0m[1m[0mcpu_share_level[0m[0m                         = "normal"
      [32m+[0m [0m[1m[0mdatastore_id[0m[0m                            = "datastore-44551"
      [32m+[0m [0m[1m[0mdefault_ip_address[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mept_rvi_mode[0m[0m                            = "automatic"
      [32m+[0m [0m[1m[0mextra_config_reboot_required[0m[0m            = true
      [32m+[0m [0m[1m[0mfirmware[0m[0m                                = "bios"
      [32m+[0m [0m[1m[0mfolder[0m[0m                                  = "IAC"
      [32m+[0m [0m[1m[0mforce_power_off[0m[0m                         = true
      [32m+[0m [0m[1m[0mguest_id[0m[0m                                = "rhel8_64Guest"
      [32m+[0m [0m[1m[0mguest_ip_addresses[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mhardware_version[0m[0m                        = (known after apply)
      [32m+[0m [0m[1m[0mhost_system_id[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mhv_mode[0m[0m                                 = "hvAuto"
      [32m+[0m [0m[1m[0mid[0m[0m                                      = (known after apply)
      [32m+[0m [0m[1m[0mide_controller_count[0m[0m                    = 2
      [32m+[0m [0m[1m[0mimported[0m[0m                                = (known after apply)
      [32m+[0m [0m[1m[0mlatency_sensitivity[0m[0m                     = "normal"
      [32m+[0m [0m[1m[0mmemory[0m[0m                                  = 16384
      [32m+[0m [0m[1m[0mmemory_limit[0m[0m                            = -1
      [32m+[0m [0m[1m[0mmemory_share_count[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mmemory_share_level[0m[0m                      = "normal"
      [32m+[0m [0m[1m[0mmigrate_wait_timeout[0m[0m                    = 30
      [32m+[0m [0m[1m[0mmoid[0m[0m                                    = (known after apply)
      [32m+[0m [0m[1m[0mname[0m[0m                                    = "u8-o2x-dev180"
      [32m+[0m [0m[1m[0mnum_cores_per_socket[0m[0m                    = 1
      [32m+[0m [0m[1m[0mnum_cpus[0m[0m                                = 8
      [32m+[0m [0m[1m[0mpower_state[0m[0m                             = (known after apply)
      [32m+[0m [0m[1m[0mpoweron_timeout[0m[0m                         = 300
      [32m+[0m [0m[1m[0mreboot_required[0m[0m                         = (known after apply)
      [32m+[0m [0m[1m[0mresource_pool_id[0m[0m                        = "resgroup-44522"
      [32m+[0m [0m[1m[0mrun_tools_scripts_after_power_on[0m[0m        = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_after_resume[0m[0m          = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_before_guest_shutdown[0m[0m = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_before_guest_standby[0m[0m  = true
      [32m+[0m [0m[1m[0msata_controller_count[0m[0m                   = 0
      [32m+[0m [0m[1m[0mscsi_bus_sharing[0m[0m                        = "noSharing"
      [32m+[0m [0m[1m[0mscsi_controller_count[0m[0m                   = 1
      [32m+[0m [0m[1m[0mscsi_type[0m[0m                               = "pvscsi"
      [32m+[0m [0m[1m[0mshutdown_wait_timeout[0m[0m                   = 3
      [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m                       = (known after apply)
      [32m+[0m [0m[1m[0mswap_placement_policy[0m[0m                   = "inherit"
      [32m+[0m [0m[1m[0mtags[0m[0m                                    = [
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:7d472c8b-9b2c-49e1-95d1-7b383aca8067:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:a00d9809-5c0c-436a-89f5-4aeb2594df19:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:dab38fe6-d558-463a-9e4e-77672ee9c014:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:f21e0e80-72cd-4f36-8ebf-42d008362bef:GLOBAL",
        ]
      [32m+[0m [0m[1m[0mtools_upgrade_policy[0m[0m                    = "manual"
      [32m+[0m [0m[1m[0muuid[0m[0m                                    = (known after apply)
      [32m+[0m [0m[1m[0mvapp_transport[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mvmware_tools_status[0m[0m                     = (known after apply)
      [32m+[0m [0m[1m[0mvmx_path[0m[0m                                = (known after apply)
      [32m+[0m [0m[1m[0mwait_for_guest_ip_timeout[0m[0m               = 0
      [32m+[0m [0m[1m[0mwait_for_guest_net_routable[0m[0m             = true
      [32m+[0m [0m[1m[0mwait_for_guest_net_timeout[0m[0m              = 5

      [32m+[0m [0mclone {
          [32m+[0m [0m[1m[0mtemplate_uuid[0m[0m = "420aeedd-9fca-2936-fbcb-b49ec2e89171"
          [32m+[0m [0m[1m[0mtimeout[0m[0m       = 30

          [32m+[0m [0mcustomize {
              [32m+[0m [0m[1m[0mtimeout[0m[0m = 10

              [32m+[0m [0mlinux_options {
                  [32m+[0m [0m[1m[0mdomain[0m[0m       = "hcl.lmco.com"
                  [32m+[0m [0m[1m[0mhost_name[0m[0m    = "u8-o2x-dev180"
                  [32m+[0m [0m[1m[0mhw_clock_utc[0m[0m = true
                }

              [32m+[0m [0mnetwork_interface {}
            }
        }

      [32m+[0m [0mdisk {
          [32m+[0m [0m[1m[0mattach[0m[0m            = false
          [32m+[0m [0m[1m[0mcontroller_type[0m[0m   = "scsi"
          [32m+[0m [0m[1m[0mdatastore_id[0m[0m      = "<computed>"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m    = (known after apply)
          [32m+[0m [0m[1m[0mdisk_mode[0m[0m         = "persistent"
          [32m+[0m [0m[1m[0mdisk_sharing[0m[0m      = "sharingNone"
          [32m+[0m [0m[1m[0meagerly_scrub[0m[0m     = false
          [32m+[0m [0m[1m[0mio_limit[0m[0m          = -1
          [32m+[0m [0m[1m[0mio_reservation[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_count[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_level[0m[0m    = "normal"
          [32m+[0m [0m[1m[0mkeep_on_remove[0m[0m    = false
          [32m+[0m [0m[1m[0mkey[0m[0m               = 0
          [32m+[0m [0m[1m[0mlabel[0m[0m             = "os"
          [32m+[0m [0m[1m[0mpath[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0msize[0m[0m              = 254
          [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mthin_provisioned[0m[0m  = true
          [32m+[0m [0m[1m[0munit_number[0m[0m       = 0
          [32m+[0m [0m[1m[0muuid[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0mwrite_through[0m[0m     = false
        }
      [32m+[0m [0mdisk {
          [32m+[0m [0m[1m[0mattach[0m[0m            = false
          [32m+[0m [0m[1m[0mcontroller_type[0m[0m   = "scsi"
          [32m+[0m [0m[1m[0mdatastore_id[0m[0m      = "<computed>"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m    = (known after apply)
          [32m+[0m [0m[1m[0mdisk_mode[0m[0m         = "persistent"
          [32m+[0m [0m[1m[0mdisk_sharing[0m[0m      = "sharingNone"
          [32m+[0m [0m[1m[0meagerly_scrub[0m[0m     = false
          [32m+[0m [0m[1m[0mio_limit[0m[0m          = -1
          [32m+[0m [0m[1m[0mio_reservation[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_count[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_level[0m[0m    = "normal"
          [32m+[0m [0m[1m[0mkeep_on_remove[0m[0m    = false
          [32m+[0m [0m[1m[0mkey[0m[0m               = 0
          [32m+[0m [0m[1m[0mlabel[0m[0m             = "data"
          [32m+[0m [0m[1m[0mpath[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0msize[0m[0m              = 586
          [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mthin_provisioned[0m[0m  = true
          [32m+[0m [0m[1m[0munit_number[0m[0m       = 1
          [32m+[0m [0m[1m[0muuid[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0mwrite_through[0m[0m     = false
        }

      [32m+[0m [0mnetwork_interface {
          [32m+[0m [0m[1m[0madapter_type[0m[0m          = "vmxnet3"
          [32m+[0m [0m[1m[0mbandwidth_limit[0m[0m       = -1
          [32m+[0m [0m[1m[0mbandwidth_reservation[0m[0m = 0
          [32m+[0m [0m[1m[0mbandwidth_share_count[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mbandwidth_share_level[0m[0m = "normal"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m        = (known after apply)
          [32m+[0m [0m[1m[0mkey[0m[0m                   = (known after apply)
          [32m+[0m [0m[1m[0mmac_address[0m[0m           = (known after apply)
          [32m+[0m [0m[1m[0mnetwork_id[0m[0m            = "dvportgroup-44946"
        }
    }

[1m  # vsphere_virtual_machine.vm["u8-o2x-dev186"][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "vsphere_virtual_machine" "vm" {
      [32m+[0m [0m[1m[0mannotation[0m[0m                              = (known after apply)
      [32m+[0m [0m[1m[0mboot_retry_delay[0m[0m                        = 10000
      [32m+[0m [0m[1m[0mchange_version[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mcpu_limit[0m[0m                               = -1
      [32m+[0m [0m[1m[0mcpu_share_count[0m[0m                         = (known after apply)
      [32m+[0m [0m[1m[0mcpu_share_level[0m[0m                         = "normal"
      [32m+[0m [0m[1m[0mdatastore_id[0m[0m                            = "datastore-44551"
      [32m+[0m [0m[1m[0mdefault_ip_address[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mept_rvi_mode[0m[0m                            = "automatic"
      [32m+[0m [0m[1m[0mextra_config_reboot_required[0m[0m            = true
      [32m+[0m [0m[1m[0mfirmware[0m[0m                                = "bios"
      [32m+[0m [0m[1m[0mfolder[0m[0m                                  = "IAC"
      [32m+[0m [0m[1m[0mforce_power_off[0m[0m                         = true
      [32m+[0m [0m[1m[0mguest_id[0m[0m                                = "rhel8_64Guest"
      [32m+[0m [0m[1m[0mguest_ip_addresses[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mhardware_version[0m[0m                        = (known after apply)
      [32m+[0m [0m[1m[0mhost_system_id[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mhv_mode[0m[0m                                 = "hvAuto"
      [32m+[0m [0m[1m[0mid[0m[0m                                      = (known after apply)
      [32m+[0m [0m[1m[0mide_controller_count[0m[0m                    = 2
      [32m+[0m [0m[1m[0mimported[0m[0m                                = (known after apply)
      [32m+[0m [0m[1m[0mlatency_sensitivity[0m[0m                     = "normal"
      [32m+[0m [0m[1m[0mmemory[0m[0m                                  = 16384
      [32m+[0m [0m[1m[0mmemory_limit[0m[0m                            = -1
      [32m+[0m [0m[1m[0mmemory_share_count[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mmemory_share_level[0m[0m                      = "normal"
      [32m+[0m [0m[1m[0mmigrate_wait_timeout[0m[0m                    = 30
      [32m+[0m [0m[1m[0mmoid[0m[0m                                    = (known after apply)
      [32m+[0m [0m[1m[0mname[0m[0m                                    = "u8-o2x-dev186"
      [32m+[0m [0m[1m[0mnum_cores_per_socket[0m[0m                    = 1
      [32m+[0m [0m[1m[0mnum_cpus[0m[0m                                = 8
      [32m+[0m [0m[1m[0mpower_state[0m[0m                             = (known after apply)
      [32m+[0m [0m[1m[0mpoweron_timeout[0m[0m                         = 300
      [32m+[0m [0m[1m[0mreboot_required[0m[0m                         = (known after apply)
      [32m+[0m [0m[1m[0mresource_pool_id[0m[0m                        = "resgroup-44522"
      [32m+[0m [0m[1m[0mrun_tools_scripts_after_power_on[0m[0m        = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_after_resume[0m[0m          = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_before_guest_shutdown[0m[0m = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_before_guest_standby[0m[0m  = true
      [32m+[0m [0m[1m[0msata_controller_count[0m[0m                   = 0
      [32m+[0m [0m[1m[0mscsi_bus_sharing[0m[0m                        = "noSharing"
      [32m+[0m [0m[1m[0mscsi_controller_count[0m[0m                   = 1
      [32m+[0m [0m[1m[0mscsi_type[0m[0m                               = "pvscsi"
      [32m+[0m [0m[1m[0mshutdown_wait_timeout[0m[0m                   = 3
      [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m                       = (known after apply)
      [32m+[0m [0m[1m[0mswap_placement_policy[0m[0m                   = "inherit"
      [32m+[0m [0m[1m[0mtags[0m[0m                                    = [
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:7d472c8b-9b2c-49e1-95d1-7b383aca8067:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:a00d9809-5c0c-436a-89f5-4aeb2594df19:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:dab38fe6-d558-463a-9e4e-77672ee9c014:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:f21e0e80-72cd-4f36-8ebf-42d008362bef:GLOBAL",
        ]
      [32m+[0m [0m[1m[0mtools_upgrade_policy[0m[0m                    = "manual"
      [32m+[0m [0m[1m[0muuid[0m[0m                                    = (known after apply)
      [32m+[0m [0m[1m[0mvapp_transport[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mvmware_tools_status[0m[0m                     = (known after apply)
      [32m+[0m [0m[1m[0mvmx_path[0m[0m                                = (known after apply)
      [32m+[0m [0m[1m[0mwait_for_guest_ip_timeout[0m[0m               = 0
      [32m+[0m [0m[1m[0mwait_for_guest_net_routable[0m[0m             = true
      [32m+[0m [0m[1m[0mwait_for_guest_net_timeout[0m[0m              = 5

      [32m+[0m [0mclone {
          [32m+[0m [0m[1m[0mtemplate_uuid[0m[0m = "420aeedd-9fca-2936-fbcb-b49ec2e89171"
          [32m+[0m [0m[1m[0mtimeout[0m[0m       = 30

          [32m+[0m [0mcustomize {
              [32m+[0m [0m[1m[0mtimeout[0m[0m = 10

              [32m+[0m [0mlinux_options {
                  [32m+[0m [0m[1m[0mdomain[0m[0m       = "hcl.lmco.com"
                  [32m+[0m [0m[1m[0mhost_name[0m[0m    = "u8-o2x-dev186"
                  [32m+[0m [0m[1m[0mhw_clock_utc[0m[0m = true
                }

              [32m+[0m [0mnetwork_interface {}
            }
        }

      [32m+[0m [0mdisk {
          [32m+[0m [0m[1m[0mattach[0m[0m            = false
          [32m+[0m [0m[1m[0mcontroller_type[0m[0m   = "scsi"
          [32m+[0m [0m[1m[0mdatastore_id[0m[0m      = "<computed>"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m    = (known after apply)
          [32m+[0m [0m[1m[0mdisk_mode[0m[0m         = "persistent"
          [32m+[0m [0m[1m[0mdisk_sharing[0m[0m      = "sharingNone"
          [32m+[0m [0m[1m[0meagerly_scrub[0m[0m     = false
          [32m+[0m [0m[1m[0mio_limit[0m[0m          = -1
          [32m+[0m [0m[1m[0mio_reservation[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_count[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_level[0m[0m    = "normal"
          [32m+[0m [0m[1m[0mkeep_on_remove[0m[0m    = false
          [32m+[0m [0m[1m[0mkey[0m[0m               = 0
          [32m+[0m [0m[1m[0mlabel[0m[0m             = "os"
          [32m+[0m [0m[1m[0mpath[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0msize[0m[0m              = 254
          [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mthin_provisioned[0m[0m  = true
          [32m+[0m [0m[1m[0munit_number[0m[0m       = 0
          [32m+[0m [0m[1m[0muuid[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0mwrite_through[0m[0m     = false
        }
      [32m+[0m [0mdisk {
          [32m+[0m [0m[1m[0mattach[0m[0m            = false
          [32m+[0m [0m[1m[0mcontroller_type[0m[0m   = "scsi"
          [32m+[0m [0m[1m[0mdatastore_id[0m[0m      = "<computed>"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m    = (known after apply)
          [32m+[0m [0m[1m[0mdisk_mode[0m[0m         = "persistent"
          [32m+[0m [0m[1m[0mdisk_sharing[0m[0m      = "sharingNone"
          [32m+[0m [0m[1m[0meagerly_scrub[0m[0m     = false
          [32m+[0m [0m[1m[0mio_limit[0m[0m          = -1
          [32m+[0m [0m[1m[0mio_reservation[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_count[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_level[0m[0m    = "normal"
          [32m+[0m [0m[1m[0mkeep_on_remove[0m[0m    = false
          [32m+[0m [0m[1m[0mkey[0m[0m               = 0
          [32m+[0m [0m[1m[0mlabel[0m[0m             = "data"
          [32m+[0m [0m[1m[0mpath[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0msize[0m[0m              = 586
          [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mthin_provisioned[0m[0m  = true
          [32m+[0m [0m[1m[0munit_number[0m[0m       = 1
          [32m+[0m [0m[1m[0muuid[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0mwrite_through[0m[0m     = false
        }

      [32m+[0m [0mnetwork_interface {
          [32m+[0m [0m[1m[0madapter_type[0m[0m          = "vmxnet3"
          [32m+[0m [0m[1m[0mbandwidth_limit[0m[0m       = -1
          [32m+[0m [0m[1m[0mbandwidth_reservation[0m[0m = 0
          [32m+[0m [0m[1m[0mbandwidth_share_count[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mbandwidth_share_level[0m[0m = "normal"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m        = (known after apply)
          [32m+[0m [0m[1m[0mkey[0m[0m                   = (known after apply)
          [32m+[0m [0m[1m[0mmac_address[0m[0m           = (known after apply)
          [32m+[0m [0m[1m[0mnetwork_id[0m[0m            = "dvportgroup-44946"
        }
    }

[1m  # vsphere_virtual_machine.vm["u8-o2x-dev188"][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "vsphere_virtual_machine" "vm" {
      [32m+[0m [0m[1m[0mannotation[0m[0m                              = (known after apply)
      [32m+[0m [0m[1m[0mboot_retry_delay[0m[0m                        = 10000
      [32m+[0m [0m[1m[0mchange_version[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mcpu_limit[0m[0m                               = -1
      [32m+[0m [0m[1m[0mcpu_share_count[0m[0m                         = (known after apply)
      [32m+[0m [0m[1m[0mcpu_share_level[0m[0m                         = "normal"
      [32m+[0m [0m[1m[0mdatastore_id[0m[0m                            = "datastore-44551"
      [32m+[0m [0m[1m[0mdefault_ip_address[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mept_rvi_mode[0m[0m                            = "automatic"
      [32m+[0m [0m[1m[0mextra_config_reboot_required[0m[0m            = true
      [32m+[0m [0m[1m[0mfirmware[0m[0m                                = "bios"
      [32m+[0m [0m[1m[0mfolder[0m[0m                                  = "IAC"
      [32m+[0m [0m[1m[0mforce_power_off[0m[0m                         = true
      [32m+[0m [0m[1m[0mguest_id[0m[0m                                = "rhel8_64Guest"
      [32m+[0m [0m[1m[0mguest_ip_addresses[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mhardware_version[0m[0m                        = (known after apply)
      [32m+[0m [0m[1m[0mhost_system_id[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mhv_mode[0m[0m                                 = "hvAuto"
      [32m+[0m [0m[1m[0mid[0m[0m                                      = (known after apply)
      [32m+[0m [0m[1m[0mide_controller_count[0m[0m                    = 2
      [32m+[0m [0m[1m[0mimported[0m[0m                                = (known after apply)
      [32m+[0m [0m[1m[0mlatency_sensitivity[0m[0m                     = "normal"
      [32m+[0m [0m[1m[0mmemory[0m[0m                                  = 16384
      [32m+[0m [0m[1m[0mmemory_limit[0m[0m                            = -1
      [32m+[0m [0m[1m[0mmemory_share_count[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mmemory_share_level[0m[0m                      = "normal"
      [32m+[0m [0m[1m[0mmigrate_wait_timeout[0m[0m                    = 30
      [32m+[0m [0m[1m[0mmoid[0m[0m                                    = (known after apply)
      [32m+[0m [0m[1m[0mname[0m[0m                                    = "u8-o2x-dev188"
      [32m+[0m [0m[1m[0mnum_cores_per_socket[0m[0m                    = 1
      [32m+[0m [0m[1m[0mnum_cpus[0m[0m                                = 8
      [32m+[0m [0m[1m[0mpower_state[0m[0m                             = (known after apply)
      [32m+[0m [0m[1m[0mpoweron_timeout[0m[0m                         = 300
      [32m+[0m [0m[1m[0mreboot_required[0m[0m                         = (known after apply)
      [32m+[0m [0m[1m[0mresource_pool_id[0m[0m                        = "resgroup-44522"
      [32m+[0m [0m[1m[0mrun_tools_scripts_after_power_on[0m[0m        = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_after_resume[0m[0m          = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_before_guest_shutdown[0m[0m = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_before_guest_standby[0m[0m  = true
      [32m+[0m [0m[1m[0msata_controller_count[0m[0m                   = 0
      [32m+[0m [0m[1m[0mscsi_bus_sharing[0m[0m                        = "noSharing"
      [32m+[0m [0m[1m[0mscsi_controller_count[0m[0m                   = 1
      [32m+[0m [0m[1m[0mscsi_type[0m[0m                               = "pvscsi"
      [32m+[0m [0m[1m[0mshutdown_wait_timeout[0m[0m                   = 3
      [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m                       = (known after apply)
      [32m+[0m [0m[1m[0mswap_placement_policy[0m[0m                   = "inherit"
      [32m+[0m [0m[1m[0mtags[0m[0m                                    = [
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:7d472c8b-9b2c-49e1-95d1-7b383aca8067:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:a00d9809-5c0c-436a-89f5-4aeb2594df19:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:dab38fe6-d558-463a-9e4e-77672ee9c014:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:f21e0e80-72cd-4f36-8ebf-42d008362bef:GLOBAL",
        ]
      [32m+[0m [0m[1m[0mtools_upgrade_policy[0m[0m                    = "manual"
      [32m+[0m [0m[1m[0muuid[0m[0m                                    = (known after apply)
      [32m+[0m [0m[1m[0mvapp_transport[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mvmware_tools_status[0m[0m                     = (known after apply)
      [32m+[0m [0m[1m[0mvmx_path[0m[0m                                = (known after apply)
      [32m+[0m [0m[1m[0mwait_for_guest_ip_timeout[0m[0m               = 0
      [32m+[0m [0m[1m[0mwait_for_guest_net_routable[0m[0m             = true
      [32m+[0m [0m[1m[0mwait_for_guest_net_timeout[0m[0m              = 5

      [32m+[0m [0mclone {
          [32m+[0m [0m[1m[0mtemplate_uuid[0m[0m = "420aeedd-9fca-2936-fbcb-b49ec2e89171"
          [32m+[0m [0m[1m[0mtimeout[0m[0m       = 30

          [32m+[0m [0mcustomize {
              [32m+[0m [0m[1m[0mtimeout[0m[0m = 10

              [32m+[0m [0mlinux_options {
                  [32m+[0m [0m[1m[0mdomain[0m[0m       = "hcl.lmco.com"
                  [32m+[0m [0m[1m[0mhost_name[0m[0m    = "u8-o2x-dev188"
                  [32m+[0m [0m[1m[0mhw_clock_utc[0m[0m = true
                }

              [32m+[0m [0mnetwork_interface {}
            }
        }

      [32m+[0m [0mdisk {
          [32m+[0m [0m[1m[0mattach[0m[0m            = false
          [32m+[0m [0m[1m[0mcontroller_type[0m[0m   = "scsi"
          [32m+[0m [0m[1m[0mdatastore_id[0m[0m      = "<computed>"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m    = (known after apply)
          [32m+[0m [0m[1m[0mdisk_mode[0m[0m         = "persistent"
          [32m+[0m [0m[1m[0mdisk_sharing[0m[0m      = "sharingNone"
          [32m+[0m [0m[1m[0meagerly_scrub[0m[0m     = false
          [32m+[0m [0m[1m[0mio_limit[0m[0m          = -1
          [32m+[0m [0m[1m[0mio_reservation[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_count[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_level[0m[0m    = "normal"
          [32m+[0m [0m[1m[0mkeep_on_remove[0m[0m    = false
          [32m+[0m [0m[1m[0mkey[0m[0m               = 0
          [32m+[0m [0m[1m[0mlabel[0m[0m             = "os"
          [32m+[0m [0m[1m[0mpath[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0msize[0m[0m              = 254
          [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mthin_provisioned[0m[0m  = true
          [32m+[0m [0m[1m[0munit_number[0m[0m       = 0
          [32m+[0m [0m[1m[0muuid[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0mwrite_through[0m[0m     = false
        }
      [32m+[0m [0mdisk {
          [32m+[0m [0m[1m[0mattach[0m[0m            = false
          [32m+[0m [0m[1m[0mcontroller_type[0m[0m   = "scsi"
          [32m+[0m [0m[1m[0mdatastore_id[0m[0m      = "<computed>"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m    = (known after apply)
          [32m+[0m [0m[1m[0mdisk_mode[0m[0m         = "persistent"
          [32m+[0m [0m[1m[0mdisk_sharing[0m[0m      = "sharingNone"
          [32m+[0m [0m[1m[0meagerly_scrub[0m[0m     = false
          [32m+[0m [0m[1m[0mio_limit[0m[0m          = -1
          [32m+[0m [0m[1m[0mio_reservation[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_count[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_level[0m[0m    = "normal"
          [32m+[0m [0m[1m[0mkeep_on_remove[0m[0m    = false
          [32m+[0m [0m[1m[0mkey[0m[0m               = 0
          [32m+[0m [0m[1m[0mlabel[0m[0m             = "data"
          [32m+[0m [0m[1m[0mpath[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0msize[0m[0m              = 586
          [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mthin_provisioned[0m[0m  = true
          [32m+[0m [0m[1m[0munit_number[0m[0m       = 1
          [32m+[0m [0m[1m[0muuid[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0mwrite_through[0m[0m     = false
        }

      [32m+[0m [0mnetwork_interface {
          [32m+[0m [0m[1m[0madapter_type[0m[0m          = "vmxnet3"
          [32m+[0m [0m[1m[0mbandwidth_limit[0m[0m       = -1
          [32m+[0m [0m[1m[0mbandwidth_reservation[0m[0m = 0
          [32m+[0m [0m[1m[0mbandwidth_share_count[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mbandwidth_share_level[0m[0m = "normal"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m        = (known after apply)
          [32m+[0m [0m[1m[0mkey[0m[0m                   = (known after apply)
          [32m+[0m [0m[1m[0mmac_address[0m[0m           = (known after apply)
          [32m+[0m [0m[1m[0mnetwork_id[0m[0m            = "dvportgroup-44946"
        }
    }

[1m  # vsphere_virtual_machine.vm["u8-o2x-dev189"][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "vsphere_virtual_machine" "vm" {
      [32m+[0m [0m[1m[0mannotation[0m[0m                              = (known after apply)
      [32m+[0m [0m[1m[0mboot_retry_delay[0m[0m                        = 10000
      [32m+[0m [0m[1m[0mchange_version[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mcpu_limit[0m[0m                               = -1
      [32m+[0m [0m[1m[0mcpu_share_count[0m[0m                         = (known after apply)
      [32m+[0m [0m[1m[0mcpu_share_level[0m[0m                         = "normal"
      [32m+[0m [0m[1m[0mdatastore_id[0m[0m                            = "datastore-44551"
      [32m+[0m [0m[1m[0mdefault_ip_address[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mept_rvi_mode[0m[0m                            = "automatic"
      [32m+[0m [0m[1m[0mextra_config_reboot_required[0m[0m            = true
      [32m+[0m [0m[1m[0mfirmware[0m[0m                                = "bios"
      [32m+[0m [0m[1m[0mfolder[0m[0m                                  = "IAC"
      [32m+[0m [0m[1m[0mforce_power_off[0m[0m                         = true
      [32m+[0m [0m[1m[0mguest_id[0m[0m                                = "rhel8_64Guest"
      [32m+[0m [0m[1m[0mguest_ip_addresses[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mhardware_version[0m[0m                        = (known after apply)
      [32m+[0m [0m[1m[0mhost_system_id[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mhv_mode[0m[0m                                 = "hvAuto"
      [32m+[0m [0m[1m[0mid[0m[0m                                      = (known after apply)
      [32m+[0m [0m[1m[0mide_controller_count[0m[0m                    = 2
      [32m+[0m [0m[1m[0mimported[0m[0m                                = (known after apply)
      [32m+[0m [0m[1m[0mlatency_sensitivity[0m[0m                     = "normal"
      [32m+[0m [0m[1m[0mmemory[0m[0m                                  = 16384
      [32m+[0m [0m[1m[0mmemory_limit[0m[0m                            = -1
      [32m+[0m [0m[1m[0mmemory_share_count[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mmemory_share_level[0m[0m                      = "normal"
      [32m+[0m [0m[1m[0mmigrate_wait_timeout[0m[0m                    = 30
      [32m+[0m [0m[1m[0mmoid[0m[0m                                    = (known after apply)
      [32m+[0m [0m[1m[0mname[0m[0m                                    = "u8-o2x-dev189"
      [32m+[0m [0m[1m[0mnum_cores_per_socket[0m[0m                    = 1
      [32m+[0m [0m[1m[0mnum_cpus[0m[0m                                = 8
      [32m+[0m [0m[1m[0mpower_state[0m[0m                             = (known after apply)
      [32m+[0m [0m[1m[0mpoweron_timeout[0m[0m                         = 300
      [32m+[0m [0m[1m[0mreboot_required[0m[0m                         = (known after apply)
      [32m+[0m [0m[1m[0mresource_pool_id[0m[0m                        = "resgroup-44522"
      [32m+[0m [0m[1m[0mrun_tools_scripts_after_power_on[0m[0m        = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_after_resume[0m[0m          = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_before_guest_shutdown[0m[0m = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_before_guest_standby[0m[0m  = true
      [32m+[0m [0m[1m[0msata_controller_count[0m[0m                   = 0
      [32m+[0m [0m[1m[0mscsi_bus_sharing[0m[0m                        = "noSharing"
      [32m+[0m [0m[1m[0mscsi_controller_count[0m[0m                   = 1
      [32m+[0m [0m[1m[0mscsi_type[0m[0m                               = "pvscsi"
      [32m+[0m [0m[1m[0mshutdown_wait_timeout[0m[0m                   = 3
      [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m                       = (known after apply)
      [32m+[0m [0m[1m[0mswap_placement_policy[0m[0m                   = "inherit"
      [32m+[0m [0m[1m[0mtags[0m[0m                                    = [
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:7d472c8b-9b2c-49e1-95d1-7b383aca8067:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:a00d9809-5c0c-436a-89f5-4aeb2594df19:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:dab38fe6-d558-463a-9e4e-77672ee9c014:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:f21e0e80-72cd-4f36-8ebf-42d008362bef:GLOBAL",
        ]
      [32m+[0m [0m[1m[0mtools_upgrade_policy[0m[0m                    = "manual"
      [32m+[0m [0m[1m[0muuid[0m[0m                                    = (known after apply)
      [32m+[0m [0m[1m[0mvapp_transport[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mvmware_tools_status[0m[0m                     = (known after apply)
      [32m+[0m [0m[1m[0mvmx_path[0m[0m                                = (known after apply)
      [32m+[0m [0m[1m[0mwait_for_guest_ip_timeout[0m[0m               = 0
      [32m+[0m [0m[1m[0mwait_for_guest_net_routable[0m[0m             = true
      [32m+[0m [0m[1m[0mwait_for_guest_net_timeout[0m[0m              = 5

      [32m+[0m [0mclone {
          [32m+[0m [0m[1m[0mtemplate_uuid[0m[0m = "420aeedd-9fca-2936-fbcb-b49ec2e89171"
          [32m+[0m [0m[1m[0mtimeout[0m[0m       = 30

          [32m+[0m [0mcustomize {
              [32m+[0m [0m[1m[0mtimeout[0m[0m = 10

              [32m+[0m [0mlinux_options {
                  [32m+[0m [0m[1m[0mdomain[0m[0m       = "hcl.lmco.com"
                  [32m+[0m [0m[1m[0mhost_name[0m[0m    = "u8-o2x-dev189"
                  [32m+[0m [0m[1m[0mhw_clock_utc[0m[0m = true
                }

              [32m+[0m [0mnetwork_interface {}
            }
        }

      [32m+[0m [0mdisk {
          [32m+[0m [0m[1m[0mattach[0m[0m            = false
          [32m+[0m [0m[1m[0mcontroller_type[0m[0m   = "scsi"
          [32m+[0m [0m[1m[0mdatastore_id[0m[0m      = "<computed>"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m    = (known after apply)
          [32m+[0m [0m[1m[0mdisk_mode[0m[0m         = "persistent"
          [32m+[0m [0m[1m[0mdisk_sharing[0m[0m      = "sharingNone"
          [32m+[0m [0m[1m[0meagerly_scrub[0m[0m     = false
          [32m+[0m [0m[1m[0mio_limit[0m[0m          = -1
          [32m+[0m [0m[1m[0mio_reservation[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_count[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_level[0m[0m    = "normal"
          [32m+[0m [0m[1m[0mkeep_on_remove[0m[0m    = false
          [32m+[0m [0m[1m[0mkey[0m[0m               = 0
          [32m+[0m [0m[1m[0mlabel[0m[0m             = "os"
          [32m+[0m [0m[1m[0mpath[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0msize[0m[0m              = 254
          [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mthin_provisioned[0m[0m  = true
          [32m+[0m [0m[1m[0munit_number[0m[0m       = 0
          [32m+[0m [0m[1m[0muuid[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0mwrite_through[0m[0m     = false
        }
      [32m+[0m [0mdisk {
          [32m+[0m [0m[1m[0mattach[0m[0m            = false
          [32m+[0m [0m[1m[0mcontroller_type[0m[0m   = "scsi"
          [32m+[0m [0m[1m[0mdatastore_id[0m[0m      = "<computed>"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m    = (known after apply)
          [32m+[0m [0m[1m[0mdisk_mode[0m[0m         = "persistent"
          [32m+[0m [0m[1m[0mdisk_sharing[0m[0m      = "sharingNone"
          [32m+[0m [0m[1m[0meagerly_scrub[0m[0m     = false
          [32m+[0m [0m[1m[0mio_limit[0m[0m          = -1
          [32m+[0m [0m[1m[0mio_reservation[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_count[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_level[0m[0m    = "normal"
          [32m+[0m [0m[1m[0mkeep_on_remove[0m[0m    = false
          [32m+[0m [0m[1m[0mkey[0m[0m               = 0
          [32m+[0m [0m[1m[0mlabel[0m[0m             = "data"
          [32m+[0m [0m[1m[0mpath[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0msize[0m[0m              = 586
          [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mthin_provisioned[0m[0m  = true
          [32m+[0m [0m[1m[0munit_number[0m[0m       = 1
          [32m+[0m [0m[1m[0muuid[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0mwrite_through[0m[0m     = false
        }

      [32m+[0m [0mnetwork_interface {
          [32m+[0m [0m[1m[0madapter_type[0m[0m          = "vmxnet3"
          [32m+[0m [0m[1m[0mbandwidth_limit[0m[0m       = -1
          [32m+[0m [0m[1m[0mbandwidth_reservation[0m[0m = 0
          [32m+[0m [0m[1m[0mbandwidth_share_count[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mbandwidth_share_level[0m[0m = "normal"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m        = (known after apply)
          [32m+[0m [0m[1m[0mkey[0m[0m                   = (known after apply)
          [32m+[0m [0m[1m[0mmac_address[0m[0m           = (known after apply)
          [32m+[0m [0m[1m[0mnetwork_id[0m[0m            = "dvportgroup-44946"
        }
    }

[1m  # vsphere_virtual_machine.vm["u8-o2x-dev194"][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "vsphere_virtual_machine" "vm" {
      [32m+[0m [0m[1m[0mannotation[0m[0m                              = (known after apply)
      [32m+[0m [0m[1m[0mboot_retry_delay[0m[0m                        = 10000
      [32m+[0m [0m[1m[0mchange_version[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mcpu_limit[0m[0m                               = -1
      [32m+[0m [0m[1m[0mcpu_share_count[0m[0m                         = (known after apply)
      [32m+[0m [0m[1m[0mcpu_share_level[0m[0m                         = "normal"
      [32m+[0m [0m[1m[0mdatastore_id[0m[0m                            = "datastore-44551"
      [32m+[0m [0m[1m[0mdefault_ip_address[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mept_rvi_mode[0m[0m                            = "automatic"
      [32m+[0m [0m[1m[0mextra_config_reboot_required[0m[0m            = true
      [32m+[0m [0m[1m[0mfirmware[0m[0m                                = "bios"
      [32m+[0m [0m[1m[0mfolder[0m[0m                                  = "IAC"
      [32m+[0m [0m[1m[0mforce_power_off[0m[0m                         = true
      [32m+[0m [0m[1m[0mguest_id[0m[0m                                = "rhel8_64Guest"
      [32m+[0m [0m[1m[0mguest_ip_addresses[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mhardware_version[0m[0m                        = (known after apply)
      [32m+[0m [0m[1m[0mhost_system_id[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mhv_mode[0m[0m                                 = "hvAuto"
      [32m+[0m [0m[1m[0mid[0m[0m                                      = (known after apply)
      [32m+[0m [0m[1m[0mide_controller_count[0m[0m                    = 2
      [32m+[0m [0m[1m[0mimported[0m[0m                                = (known after apply)
      [32m+[0m [0m[1m[0mlatency_sensitivity[0m[0m                     = "normal"
      [32m+[0m [0m[1m[0mmemory[0m[0m                                  = 16384
      [32m+[0m [0m[1m[0mmemory_limit[0m[0m                            = -1
      [32m+[0m [0m[1m[0mmemory_share_count[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mmemory_share_level[0m[0m                      = "normal"
      [32m+[0m [0m[1m[0mmigrate_wait_timeout[0m[0m                    = 30
      [32m+[0m [0m[1m[0mmoid[0m[0m                                    = (known after apply)
      [32m+[0m [0m[1m[0mname[0m[0m                                    = "u8-o2x-dev194"
      [32m+[0m [0m[1m[0mnum_cores_per_socket[0m[0m                    = 1
      [32m+[0m [0m[1m[0mnum_cpus[0m[0m                                = 8
      [32m+[0m [0m[1m[0mpower_state[0m[0m                             = (known after apply)
      [32m+[0m [0m[1m[0mpoweron_timeout[0m[0m                         = 300
      [32m+[0m [0m[1m[0mreboot_required[0m[0m                         = (known after apply)
      [32m+[0m [0m[1m[0mresource_pool_id[0m[0m                        = "resgroup-44522"
      [32m+[0m [0m[1m[0mrun_tools_scripts_after_power_on[0m[0m        = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_after_resume[0m[0m          = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_before_guest_shutdown[0m[0m = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_before_guest_standby[0m[0m  = true
      [32m+[0m [0m[1m[0msata_controller_count[0m[0m                   = 0
      [32m+[0m [0m[1m[0mscsi_bus_sharing[0m[0m                        = "noSharing"
      [32m+[0m [0m[1m[0mscsi_controller_count[0m[0m                   = 1
      [32m+[0m [0m[1m[0mscsi_type[0m[0m                               = "pvscsi"
      [32m+[0m [0m[1m[0mshutdown_wait_timeout[0m[0m                   = 3
      [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m                       = (known after apply)
      [32m+[0m [0m[1m[0mswap_placement_policy[0m[0m                   = "inherit"
      [32m+[0m [0m[1m[0mtags[0m[0m                                    = [
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:7d472c8b-9b2c-49e1-95d1-7b383aca8067:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:a00d9809-5c0c-436a-89f5-4aeb2594df19:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:dab38fe6-d558-463a-9e4e-77672ee9c014:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:f21e0e80-72cd-4f36-8ebf-42d008362bef:GLOBAL",
        ]
      [32m+[0m [0m[1m[0mtools_upgrade_policy[0m[0m                    = "manual"
      [32m+[0m [0m[1m[0muuid[0m[0m                                    = (known after apply)
      [32m+[0m [0m[1m[0mvapp_transport[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mvmware_tools_status[0m[0m                     = (known after apply)
      [32m+[0m [0m[1m[0mvmx_path[0m[0m                                = (known after apply)
      [32m+[0m [0m[1m[0mwait_for_guest_ip_timeout[0m[0m               = 0
      [32m+[0m [0m[1m[0mwait_for_guest_net_routable[0m[0m             = true
      [32m+[0m [0m[1m[0mwait_for_guest_net_timeout[0m[0m              = 5

      [32m+[0m [0mclone {
          [32m+[0m [0m[1m[0mtemplate_uuid[0m[0m = "420aeedd-9fca-2936-fbcb-b49ec2e89171"
          [32m+[0m [0m[1m[0mtimeout[0m[0m       = 30

          [32m+[0m [0mcustomize {
              [32m+[0m [0m[1m[0mtimeout[0m[0m = 10

              [32m+[0m [0mlinux_options {
                  [32m+[0m [0m[1m[0mdomain[0m[0m       = "hcl.lmco.com"
                  [32m+[0m [0m[1m[0mhost_name[0m[0m    = "u8-o2x-dev194"
                  [32m+[0m [0m[1m[0mhw_clock_utc[0m[0m = true
                }

              [32m+[0m [0mnetwork_interface {}
            }
        }

      [32m+[0m [0mdisk {
          [32m+[0m [0m[1m[0mattach[0m[0m            = false
          [32m+[0m [0m[1m[0mcontroller_type[0m[0m   = "scsi"
          [32m+[0m [0m[1m[0mdatastore_id[0m[0m      = "<computed>"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m    = (known after apply)
          [32m+[0m [0m[1m[0mdisk_mode[0m[0m         = "persistent"
          [32m+[0m [0m[1m[0mdisk_sharing[0m[0m      = "sharingNone"
          [32m+[0m [0m[1m[0meagerly_scrub[0m[0m     = false
          [32m+[0m [0m[1m[0mio_limit[0m[0m          = -1
          [32m+[0m [0m[1m[0mio_reservation[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_count[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_level[0m[0m    = "normal"
          [32m+[0m [0m[1m[0mkeep_on_remove[0m[0m    = false
          [32m+[0m [0m[1m[0mkey[0m[0m               = 0
          [32m+[0m [0m[1m[0mlabel[0m[0m             = "os"
          [32m+[0m [0m[1m[0mpath[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0msize[0m[0m              = 254
          [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mthin_provisioned[0m[0m  = true
          [32m+[0m [0m[1m[0munit_number[0m[0m       = 0
          [32m+[0m [0m[1m[0muuid[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0mwrite_through[0m[0m     = false
        }
      [32m+[0m [0mdisk {
          [32m+[0m [0m[1m[0mattach[0m[0m            = false
          [32m+[0m [0m[1m[0mcontroller_type[0m[0m   = "scsi"
          [32m+[0m [0m[1m[0mdatastore_id[0m[0m      = "<computed>"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m    = (known after apply)
          [32m+[0m [0m[1m[0mdisk_mode[0m[0m         = "persistent"
          [32m+[0m [0m[1m[0mdisk_sharing[0m[0m      = "sharingNone"
          [32m+[0m [0m[1m[0meagerly_scrub[0m[0m     = false
          [32m+[0m [0m[1m[0mio_limit[0m[0m          = -1
          [32m+[0m [0m[1m[0mio_reservation[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_count[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_level[0m[0m    = "normal"
          [32m+[0m [0m[1m[0mkeep_on_remove[0m[0m    = false
          [32m+[0m [0m[1m[0mkey[0m[0m               = 0
          [32m+[0m [0m[1m[0mlabel[0m[0m             = "data"
          [32m+[0m [0m[1m[0mpath[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0msize[0m[0m              = 586
          [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mthin_provisioned[0m[0m  = true
          [32m+[0m [0m[1m[0munit_number[0m[0m       = 1
          [32m+[0m [0m[1m[0muuid[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0mwrite_through[0m[0m     = false
        }

      [32m+[0m [0mnetwork_interface {
          [32m+[0m [0m[1m[0madapter_type[0m[0m          = "vmxnet3"
          [32m+[0m [0m[1m[0mbandwidth_limit[0m[0m       = -1
          [32m+[0m [0m[1m[0mbandwidth_reservation[0m[0m = 0
          [32m+[0m [0m[1m[0mbandwidth_share_count[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mbandwidth_share_level[0m[0m = "normal"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m        = (known after apply)
          [32m+[0m [0m[1m[0mkey[0m[0m                   = (known after apply)
          [32m+[0m [0m[1m[0mmac_address[0m[0m           = (known after apply)
          [32m+[0m [0m[1m[0mnetwork_id[0m[0m            = "dvportgroup-44946"
        }
    }

[1m  # vsphere_virtual_machine.vm["u8-o2x-dev205"][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "vsphere_virtual_machine" "vm" {
      [32m+[0m [0m[1m[0mannotation[0m[0m                              = (known after apply)
      [32m+[0m [0m[1m[0mboot_retry_delay[0m[0m                        = 10000
      [32m+[0m [0m[1m[0mchange_version[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mcpu_limit[0m[0m                               = -1
      [32m+[0m [0m[1m[0mcpu_share_count[0m[0m                         = (known after apply)
      [32m+[0m [0m[1m[0mcpu_share_level[0m[0m                         = "normal"
      [32m+[0m [0m[1m[0mdatastore_id[0m[0m                            = "datastore-44551"
      [32m+[0m [0m[1m[0mdefault_ip_address[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mept_rvi_mode[0m[0m                            = "automatic"
      [32m+[0m [0m[1m[0mextra_config_reboot_required[0m[0m            = true
      [32m+[0m [0m[1m[0mfirmware[0m[0m                                = "bios"
      [32m+[0m [0m[1m[0mfolder[0m[0m                                  = "IAC"
      [32m+[0m [0m[1m[0mforce_power_off[0m[0m                         = true
      [32m+[0m [0m[1m[0mguest_id[0m[0m                                = "rhel8_64Guest"
      [32m+[0m [0m[1m[0mguest_ip_addresses[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mhardware_version[0m[0m                        = (known after apply)
      [32m+[0m [0m[1m[0mhost_system_id[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mhv_mode[0m[0m                                 = "hvAuto"
      [32m+[0m [0m[1m[0mid[0m[0m                                      = (known after apply)
      [32m+[0m [0m[1m[0mide_controller_count[0m[0m                    = 2
      [32m+[0m [0m[1m[0mimported[0m[0m                                = (known after apply)
      [32m+[0m [0m[1m[0mlatency_sensitivity[0m[0m                     = "normal"
      [32m+[0m [0m[1m[0mmemory[0m[0m                                  = 16384
      [32m+[0m [0m[1m[0mmemory_limit[0m[0m                            = -1
      [32m+[0m [0m[1m[0mmemory_share_count[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mmemory_share_level[0m[0m                      = "normal"
      [32m+[0m [0m[1m[0mmigrate_wait_timeout[0m[0m                    = 30
      [32m+[0m [0m[1m[0mmoid[0m[0m                                    = (known after apply)
      [32m+[0m [0m[1m[0mname[0m[0m                                    = "u8-o2x-dev205"
      [32m+[0m [0m[1m[0mnum_cores_per_socket[0m[0m                    = 1
      [32m+[0m [0m[1m[0mnum_cpus[0m[0m                                = 8
      [32m+[0m [0m[1m[0mpower_state[0m[0m                             = (known after apply)
      [32m+[0m [0m[1m[0mpoweron_timeout[0m[0m                         = 300
      [32m+[0m [0m[1m[0mreboot_required[0m[0m                         = (known after apply)
      [32m+[0m [0m[1m[0mresource_pool_id[0m[0m                        = "resgroup-44522"
      [32m+[0m [0m[1m[0mrun_tools_scripts_after_power_on[0m[0m        = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_after_resume[0m[0m          = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_before_guest_shutdown[0m[0m = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_before_guest_standby[0m[0m  = true
      [32m+[0m [0m[1m[0msata_controller_count[0m[0m                   = 0
      [32m+[0m [0m[1m[0mscsi_bus_sharing[0m[0m                        = "noSharing"
      [32m+[0m [0m[1m[0mscsi_controller_count[0m[0m                   = 1
      [32m+[0m [0m[1m[0mscsi_type[0m[0m                               = "pvscsi"
      [32m+[0m [0m[1m[0mshutdown_wait_timeout[0m[0m                   = 3
      [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m                       = (known after apply)
      [32m+[0m [0m[1m[0mswap_placement_policy[0m[0m                   = "inherit"
      [32m+[0m [0m[1m[0mtags[0m[0m                                    = [
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:7d472c8b-9b2c-49e1-95d1-7b383aca8067:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:a00d9809-5c0c-436a-89f5-4aeb2594df19:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:dab38fe6-d558-463a-9e4e-77672ee9c014:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:f21e0e80-72cd-4f36-8ebf-42d008362bef:GLOBAL",
        ]
      [32m+[0m [0m[1m[0mtools_upgrade_policy[0m[0m                    = "manual"
      [32m+[0m [0m[1m[0muuid[0m[0m                                    = (known after apply)
      [32m+[0m [0m[1m[0mvapp_transport[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mvmware_tools_status[0m[0m                     = (known after apply)
      [32m+[0m [0m[1m[0mvmx_path[0m[0m                                = (known after apply)
      [32m+[0m [0m[1m[0mwait_for_guest_ip_timeout[0m[0m               = 0
      [32m+[0m [0m[1m[0mwait_for_guest_net_routable[0m[0m             = true
      [32m+[0m [0m[1m[0mwait_for_guest_net_timeout[0m[0m              = 5

      [32m+[0m [0mclone {
          [32m+[0m [0m[1m[0mtemplate_uuid[0m[0m = "420aeedd-9fca-2936-fbcb-b49ec2e89171"
          [32m+[0m [0m[1m[0mtimeout[0m[0m       = 30

          [32m+[0m [0mcustomize {
              [32m+[0m [0m[1m[0mtimeout[0m[0m = 10

              [32m+[0m [0mlinux_options {
                  [32m+[0m [0m[1m[0mdomain[0m[0m       = "hcl.lmco.com"
                  [32m+[0m [0m[1m[0mhost_name[0m[0m    = "u8-o2x-dev205"
                  [32m+[0m [0m[1m[0mhw_clock_utc[0m[0m = true
                }

              [32m+[0m [0mnetwork_interface {}
            }
        }

      [32m+[0m [0mdisk {
          [32m+[0m [0m[1m[0mattach[0m[0m            = false
          [32m+[0m [0m[1m[0mcontroller_type[0m[0m   = "scsi"
          [32m+[0m [0m[1m[0mdatastore_id[0m[0m      = "<computed>"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m    = (known after apply)
          [32m+[0m [0m[1m[0mdisk_mode[0m[0m         = "persistent"
          [32m+[0m [0m[1m[0mdisk_sharing[0m[0m      = "sharingNone"
          [32m+[0m [0m[1m[0meagerly_scrub[0m[0m     = false
          [32m+[0m [0m[1m[0mio_limit[0m[0m          = -1
          [32m+[0m [0m[1m[0mio_reservation[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_count[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_level[0m[0m    = "normal"
          [32m+[0m [0m[1m[0mkeep_on_remove[0m[0m    = false
          [32m+[0m [0m[1m[0mkey[0m[0m               = 0
          [32m+[0m [0m[1m[0mlabel[0m[0m             = "os"
          [32m+[0m [0m[1m[0mpath[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0msize[0m[0m              = 254
          [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mthin_provisioned[0m[0m  = true
          [32m+[0m [0m[1m[0munit_number[0m[0m       = 0
          [32m+[0m [0m[1m[0muuid[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0mwrite_through[0m[0m     = false
        }
      [32m+[0m [0mdisk {
          [32m+[0m [0m[1m[0mattach[0m[0m            = false
          [32m+[0m [0m[1m[0mcontroller_type[0m[0m   = "scsi"
          [32m+[0m [0m[1m[0mdatastore_id[0m[0m      = "<computed>"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m    = (known after apply)
          [32m+[0m [0m[1m[0mdisk_mode[0m[0m         = "persistent"
          [32m+[0m [0m[1m[0mdisk_sharing[0m[0m      = "sharingNone"
          [32m+[0m [0m[1m[0meagerly_scrub[0m[0m     = false
          [32m+[0m [0m[1m[0mio_limit[0m[0m          = -1
          [32m+[0m [0m[1m[0mio_reservation[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_count[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_level[0m[0m    = "normal"
          [32m+[0m [0m[1m[0mkeep_on_remove[0m[0m    = false
          [32m+[0m [0m[1m[0mkey[0m[0m               = 0
          [32m+[0m [0m[1m[0mlabel[0m[0m             = "data"
          [32m+[0m [0m[1m[0mpath[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0msize[0m[0m              = 586
          [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mthin_provisioned[0m[0m  = true
          [32m+[0m [0m[1m[0munit_number[0m[0m       = 1
          [32m+[0m [0m[1m[0muuid[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0mwrite_through[0m[0m     = false
        }

      [32m+[0m [0mnetwork_interface {
          [32m+[0m [0m[1m[0madapter_type[0m[0m          = "vmxnet3"
          [32m+[0m [0m[1m[0mbandwidth_limit[0m[0m       = -1
          [32m+[0m [0m[1m[0mbandwidth_reservation[0m[0m = 0
          [32m+[0m [0m[1m[0mbandwidth_share_count[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mbandwidth_share_level[0m[0m = "normal"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m        = (known after apply)
          [32m+[0m [0m[1m[0mkey[0m[0m                   = (known after apply)
          [32m+[0m [0m[1m[0mmac_address[0m[0m           = (known after apply)
          [32m+[0m [0m[1m[0mnetwork_id[0m[0m            = "dvportgroup-44946"
        }
    }

[1m  # vsphere_virtual_machine.vm["u8-o2x-dev214"][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "vsphere_virtual_machine" "vm" {
      [32m+[0m [0m[1m[0mannotation[0m[0m                              = (known after apply)
      [32m+[0m [0m[1m[0mboot_retry_delay[0m[0m                        = 10000
      [32m+[0m [0m[1m[0mchange_version[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mcpu_limit[0m[0m                               = -1
      [32m+[0m [0m[1m[0mcpu_share_count[0m[0m                         = (known after apply)
      [32m+[0m [0m[1m[0mcpu_share_level[0m[0m                         = "normal"
      [32m+[0m [0m[1m[0mdatastore_id[0m[0m                            = "datastore-44551"
      [32m+[0m [0m[1m[0mdefault_ip_address[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mept_rvi_mode[0m[0m                            = "automatic"
      [32m+[0m [0m[1m[0mextra_config_reboot_required[0m[0m            = true
      [32m+[0m [0m[1m[0mfirmware[0m[0m                                = "bios"
      [32m+[0m [0m[1m[0mfolder[0m[0m                                  = "IAC"
      [32m+[0m [0m[1m[0mforce_power_off[0m[0m                         = true
      [32m+[0m [0m[1m[0mguest_id[0m[0m                                = "rhel8_64Guest"
      [32m+[0m [0m[1m[0mguest_ip_addresses[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mhardware_version[0m[0m                        = (known after apply)
      [32m+[0m [0m[1m[0mhost_system_id[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mhv_mode[0m[0m                                 = "hvAuto"
      [32m+[0m [0m[1m[0mid[0m[0m                                      = (known after apply)
      [32m+[0m [0m[1m[0mide_controller_count[0m[0m                    = 2
      [32m+[0m [0m[1m[0mimported[0m[0m                                = (known after apply)
      [32m+[0m [0m[1m[0mlatency_sensitivity[0m[0m                     = "normal"
      [32m+[0m [0m[1m[0mmemory[0m[0m                                  = 16384
      [32m+[0m [0m[1m[0mmemory_limit[0m[0m                            = -1
      [32m+[0m [0m[1m[0mmemory_share_count[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mmemory_share_level[0m[0m                      = "normal"
      [32m+[0m [0m[1m[0mmigrate_wait_timeout[0m[0m                    = 30
      [32m+[0m [0m[1m[0mmoid[0m[0m                                    = (known after apply)
      [32m+[0m [0m[1m[0mname[0m[0m                                    = "u8-o2x-dev214"
      [32m+[0m [0m[1m[0mnum_cores_per_socket[0m[0m                    = 1
      [32m+[0m [0m[1m[0mnum_cpus[0m[0m                                = 8
      [32m+[0m [0m[1m[0mpower_state[0m[0m                             = (known after apply)
      [32m+[0m [0m[1m[0mpoweron_timeout[0m[0m                         = 300
      [32m+[0m [0m[1m[0mreboot_required[0m[0m                         = (known after apply)
      [32m+[0m [0m[1m[0mresource_pool_id[0m[0m                        = "resgroup-44522"
      [32m+[0m [0m[1m[0mrun_tools_scripts_after_power_on[0m[0m        = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_after_resume[0m[0m          = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_before_guest_shutdown[0m[0m = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_before_guest_standby[0m[0m  = true
      [32m+[0m [0m[1m[0msata_controller_count[0m[0m                   = 0
      [32m+[0m [0m[1m[0mscsi_bus_sharing[0m[0m                        = "noSharing"
      [32m+[0m [0m[1m[0mscsi_controller_count[0m[0m                   = 1
      [32m+[0m [0m[1m[0mscsi_type[0m[0m                               = "pvscsi"
      [32m+[0m [0m[1m[0mshutdown_wait_timeout[0m[0m                   = 3
      [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m                       = (known after apply)
      [32m+[0m [0m[1m[0mswap_placement_policy[0m[0m                   = "inherit"
      [32m+[0m [0m[1m[0mtags[0m[0m                                    = [
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:7d472c8b-9b2c-49e1-95d1-7b383aca8067:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:a00d9809-5c0c-436a-89f5-4aeb2594df19:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:dab38fe6-d558-463a-9e4e-77672ee9c014:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:f21e0e80-72cd-4f36-8ebf-42d008362bef:GLOBAL",
        ]
      [32m+[0m [0m[1m[0mtools_upgrade_policy[0m[0m                    = "manual"
      [32m+[0m [0m[1m[0muuid[0m[0m                                    = (known after apply)
      [32m+[0m [0m[1m[0mvapp_transport[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mvmware_tools_status[0m[0m                     = (known after apply)
      [32m+[0m [0m[1m[0mvmx_path[0m[0m                                = (known after apply)
      [32m+[0m [0m[1m[0mwait_for_guest_ip_timeout[0m[0m               = 0
      [32m+[0m [0m[1m[0mwait_for_guest_net_routable[0m[0m             = true
      [32m+[0m [0m[1m[0mwait_for_guest_net_timeout[0m[0m              = 5

      [32m+[0m [0mclone {
          [32m+[0m [0m[1m[0mtemplate_uuid[0m[0m = "420aeedd-9fca-2936-fbcb-b49ec2e89171"
          [32m+[0m [0m[1m[0mtimeout[0m[0m       = 30

          [32m+[0m [0mcustomize {
              [32m+[0m [0m[1m[0mtimeout[0m[0m = 10

              [32m+[0m [0mlinux_options {
                  [32m+[0m [0m[1m[0mdomain[0m[0m       = "hcl.lmco.com"
                  [32m+[0m [0m[1m[0mhost_name[0m[0m    = "u8-o2x-dev214"
                  [32m+[0m [0m[1m[0mhw_clock_utc[0m[0m = true
                }

              [32m+[0m [0mnetwork_interface {}
            }
        }

      [32m+[0m [0mdisk {
          [32m+[0m [0m[1m[0mattach[0m[0m            = false
          [32m+[0m [0m[1m[0mcontroller_type[0m[0m   = "scsi"
          [32m+[0m [0m[1m[0mdatastore_id[0m[0m      = "<computed>"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m    = (known after apply)
          [32m+[0m [0m[1m[0mdisk_mode[0m[0m         = "persistent"
          [32m+[0m [0m[1m[0mdisk_sharing[0m[0m      = "sharingNone"
          [32m+[0m [0m[1m[0meagerly_scrub[0m[0m     = false
          [32m+[0m [0m[1m[0mio_limit[0m[0m          = -1
          [32m+[0m [0m[1m[0mio_reservation[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_count[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_level[0m[0m    = "normal"
          [32m+[0m [0m[1m[0mkeep_on_remove[0m[0m    = false
          [32m+[0m [0m[1m[0mkey[0m[0m               = 0
          [32m+[0m [0m[1m[0mlabel[0m[0m             = "os"
          [32m+[0m [0m[1m[0mpath[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0msize[0m[0m              = 254
          [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mthin_provisioned[0m[0m  = true
          [32m+[0m [0m[1m[0munit_number[0m[0m       = 0
          [32m+[0m [0m[1m[0muuid[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0mwrite_through[0m[0m     = false
        }
      [32m+[0m [0mdisk {
          [32m+[0m [0m[1m[0mattach[0m[0m            = false
          [32m+[0m [0m[1m[0mcontroller_type[0m[0m   = "scsi"
          [32m+[0m [0m[1m[0mdatastore_id[0m[0m      = "<computed>"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m    = (known after apply)
          [32m+[0m [0m[1m[0mdisk_mode[0m[0m         = "persistent"
          [32m+[0m [0m[1m[0mdisk_sharing[0m[0m      = "sharingNone"
          [32m+[0m [0m[1m[0meagerly_scrub[0m[0m     = false
          [32m+[0m [0m[1m[0mio_limit[0m[0m          = -1
          [32m+[0m [0m[1m[0mio_reservation[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_count[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_level[0m[0m    = "normal"
          [32m+[0m [0m[1m[0mkeep_on_remove[0m[0m    = false
          [32m+[0m [0m[1m[0mkey[0m[0m               = 0
          [32m+[0m [0m[1m[0mlabel[0m[0m             = "data"
          [32m+[0m [0m[1m[0mpath[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0msize[0m[0m              = 586
          [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mthin_provisioned[0m[0m  = true
          [32m+[0m [0m[1m[0munit_number[0m[0m       = 1
          [32m+[0m [0m[1m[0muuid[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0mwrite_through[0m[0m     = false
        }

      [32m+[0m [0mnetwork_interface {
          [32m+[0m [0m[1m[0madapter_type[0m[0m          = "vmxnet3"
          [32m+[0m [0m[1m[0mbandwidth_limit[0m[0m       = -1
          [32m+[0m [0m[1m[0mbandwidth_reservation[0m[0m = 0
          [32m+[0m [0m[1m[0mbandwidth_share_count[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mbandwidth_share_level[0m[0m = "normal"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m        = (known after apply)
          [32m+[0m [0m[1m[0mkey[0m[0m                   = (known after apply)
          [32m+[0m [0m[1m[0mmac_address[0m[0m           = (known after apply)
          [32m+[0m [0m[1m[0mnetwork_id[0m[0m            = "dvportgroup-44946"
        }
    }

[1m  # vsphere_virtual_machine.vm["u8-o2x-dev215"][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "vsphere_virtual_machine" "vm" {
      [32m+[0m [0m[1m[0mannotation[0m[0m                              = (known after apply)
      [32m+[0m [0m[1m[0mboot_retry_delay[0m[0m                        = 10000
      [32m+[0m [0m[1m[0mchange_version[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mcpu_limit[0m[0m                               = -1
      [32m+[0m [0m[1m[0mcpu_share_count[0m[0m                         = (known after apply)
      [32m+[0m [0m[1m[0mcpu_share_level[0m[0m                         = "normal"
      [32m+[0m [0m[1m[0mdatastore_id[0m[0m                            = "datastore-44551"
      [32m+[0m [0m[1m[0mdefault_ip_address[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mept_rvi_mode[0m[0m                            = "automatic"
      [32m+[0m [0m[1m[0mextra_config_reboot_required[0m[0m            = true
      [32m+[0m [0m[1m[0mfirmware[0m[0m                                = "bios"
      [32m+[0m [0m[1m[0mfolder[0m[0m                                  = "IAC"
      [32m+[0m [0m[1m[0mforce_power_off[0m[0m                         = true
      [32m+[0m [0m[1m[0mguest_id[0m[0m                                = "rhel8_64Guest"
      [32m+[0m [0m[1m[0mguest_ip_addresses[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mhardware_version[0m[0m                        = (known after apply)
      [32m+[0m [0m[1m[0mhost_system_id[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mhv_mode[0m[0m                                 = "hvAuto"
      [32m+[0m [0m[1m[0mid[0m[0m                                      = (known after apply)
      [32m+[0m [0m[1m[0mide_controller_count[0m[0m                    = 2
      [32m+[0m [0m[1m[0mimported[0m[0m                                = (known after apply)
      [32m+[0m [0m[1m[0mlatency_sensitivity[0m[0m                     = "normal"
      [32m+[0m [0m[1m[0mmemory[0m[0m                                  = 16384
      [32m+[0m [0m[1m[0mmemory_limit[0m[0m                            = -1
      [32m+[0m [0m[1m[0mmemory_share_count[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mmemory_share_level[0m[0m                      = "normal"
      [32m+[0m [0m[1m[0mmigrate_wait_timeout[0m[0m                    = 30
      [32m+[0m [0m[1m[0mmoid[0m[0m                                    = (known after apply)
      [32m+[0m [0m[1m[0mname[0m[0m                                    = "u8-o2x-dev215"
      [32m+[0m [0m[1m[0mnum_cores_per_socket[0m[0m                    = 1
      [32m+[0m [0m[1m[0mnum_cpus[0m[0m                                = 8
      [32m+[0m [0m[1m[0mpower_state[0m[0m                             = (known after apply)
      [32m+[0m [0m[1m[0mpoweron_timeout[0m[0m                         = 300
      [32m+[0m [0m[1m[0mreboot_required[0m[0m                         = (known after apply)
      [32m+[0m [0m[1m[0mresource_pool_id[0m[0m                        = "resgroup-44522"
      [32m+[0m [0m[1m[0mrun_tools_scripts_after_power_on[0m[0m        = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_after_resume[0m[0m          = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_before_guest_shutdown[0m[0m = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_before_guest_standby[0m[0m  = true
      [32m+[0m [0m[1m[0msata_controller_count[0m[0m                   = 0
      [32m+[0m [0m[1m[0mscsi_bus_sharing[0m[0m                        = "noSharing"
      [32m+[0m [0m[1m[0mscsi_controller_count[0m[0m                   = 1
      [32m+[0m [0m[1m[0mscsi_type[0m[0m                               = "pvscsi"
      [32m+[0m [0m[1m[0mshutdown_wait_timeout[0m[0m                   = 3
      [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m                       = (known after apply)
      [32m+[0m [0m[1m[0mswap_placement_policy[0m[0m                   = "inherit"
      [32m+[0m [0m[1m[0mtags[0m[0m                                    = [
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:7d472c8b-9b2c-49e1-95d1-7b383aca8067:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:a00d9809-5c0c-436a-89f5-4aeb2594df19:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:dab38fe6-d558-463a-9e4e-77672ee9c014:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:f21e0e80-72cd-4f36-8ebf-42d008362bef:GLOBAL",
        ]
      [32m+[0m [0m[1m[0mtools_upgrade_policy[0m[0m                    = "manual"
      [32m+[0m [0m[1m[0muuid[0m[0m                                    = (known after apply)
      [32m+[0m [0m[1m[0mvapp_transport[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mvmware_tools_status[0m[0m                     = (known after apply)
      [32m+[0m [0m[1m[0mvmx_path[0m[0m                                = (known after apply)
      [32m+[0m [0m[1m[0mwait_for_guest_ip_timeout[0m[0m               = 0
      [32m+[0m [0m[1m[0mwait_for_guest_net_routable[0m[0m             = true
      [32m+[0m [0m[1m[0mwait_for_guest_net_timeout[0m[0m              = 5

      [32m+[0m [0mclone {
          [32m+[0m [0m[1m[0mtemplate_uuid[0m[0m = "420aeedd-9fca-2936-fbcb-b49ec2e89171"
          [32m+[0m [0m[1m[0mtimeout[0m[0m       = 30

          [32m+[0m [0mcustomize {
              [32m+[0m [0m[1m[0mtimeout[0m[0m = 10

              [32m+[0m [0mlinux_options {
                  [32m+[0m [0m[1m[0mdomain[0m[0m       = "hcl.lmco.com"
                  [32m+[0m [0m[1m[0mhost_name[0m[0m    = "u8-o2x-dev215"
                  [32m+[0m [0m[1m[0mhw_clock_utc[0m[0m = true
                }

              [32m+[0m [0mnetwork_interface {}
            }
        }

      [32m+[0m [0mdisk {
          [32m+[0m [0m[1m[0mattach[0m[0m            = false
          [32m+[0m [0m[1m[0mcontroller_type[0m[0m   = "scsi"
          [32m+[0m [0m[1m[0mdatastore_id[0m[0m      = "<computed>"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m    = (known after apply)
          [32m+[0m [0m[1m[0mdisk_mode[0m[0m         = "persistent"
          [32m+[0m [0m[1m[0mdisk_sharing[0m[0m      = "sharingNone"
          [32m+[0m [0m[1m[0meagerly_scrub[0m[0m     = false
          [32m+[0m [0m[1m[0mio_limit[0m[0m          = -1
          [32m+[0m [0m[1m[0mio_reservation[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_count[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_level[0m[0m    = "normal"
          [32m+[0m [0m[1m[0mkeep_on_remove[0m[0m    = false
          [32m+[0m [0m[1m[0mkey[0m[0m               = 0
          [32m+[0m [0m[1m[0mlabel[0m[0m             = "os"
          [32m+[0m [0m[1m[0mpath[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0msize[0m[0m              = 254
          [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mthin_provisioned[0m[0m  = true
          [32m+[0m [0m[1m[0munit_number[0m[0m       = 0
          [32m+[0m [0m[1m[0muuid[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0mwrite_through[0m[0m     = false
        }
      [32m+[0m [0mdisk {
          [32m+[0m [0m[1m[0mattach[0m[0m            = false
          [32m+[0m [0m[1m[0mcontroller_type[0m[0m   = "scsi"
          [32m+[0m [0m[1m[0mdatastore_id[0m[0m      = "<computed>"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m    = (known after apply)
          [32m+[0m [0m[1m[0mdisk_mode[0m[0m         = "persistent"
          [32m+[0m [0m[1m[0mdisk_sharing[0m[0m      = "sharingNone"
          [32m+[0m [0m[1m[0meagerly_scrub[0m[0m     = false
          [32m+[0m [0m[1m[0mio_limit[0m[0m          = -1
          [32m+[0m [0m[1m[0mio_reservation[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_count[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_level[0m[0m    = "normal"
          [32m+[0m [0m[1m[0mkeep_on_remove[0m[0m    = false
          [32m+[0m [0m[1m[0mkey[0m[0m               = 0
          [32m+[0m [0m[1m[0mlabel[0m[0m             = "data"
          [32m+[0m [0m[1m[0mpath[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0msize[0m[0m              = 586
          [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mthin_provisioned[0m[0m  = true
          [32m+[0m [0m[1m[0munit_number[0m[0m       = 1
          [32m+[0m [0m[1m[0muuid[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0mwrite_through[0m[0m     = false
        }

      [32m+[0m [0mnetwork_interface {
          [32m+[0m [0m[1m[0madapter_type[0m[0m          = "vmxnet3"
          [32m+[0m [0m[1m[0mbandwidth_limit[0m[0m       = -1
          [32m+[0m [0m[1m[0mbandwidth_reservation[0m[0m = 0
          [32m+[0m [0m[1m[0mbandwidth_share_count[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mbandwidth_share_level[0m[0m = "normal"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m        = (known after apply)
          [32m+[0m [0m[1m[0mkey[0m[0m                   = (known after apply)
          [32m+[0m [0m[1m[0mmac_address[0m[0m           = (known after apply)
          [32m+[0m [0m[1m[0mnetwork_id[0m[0m            = "dvportgroup-44946"
        }
    }

[1m  # vsphere_virtual_machine.vm["u8-o2x-dev218"][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "vsphere_virtual_machine" "vm" {
      [32m+[0m [0m[1m[0mannotation[0m[0m                              = (known after apply)
      [32m+[0m [0m[1m[0mboot_retry_delay[0m[0m                        = 10000
      [32m+[0m [0m[1m[0mchange_version[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mcpu_limit[0m[0m                               = -1
      [32m+[0m [0m[1m[0mcpu_share_count[0m[0m                         = (known after apply)
      [32m+[0m [0m[1m[0mcpu_share_level[0m[0m                         = "normal"
      [32m+[0m [0m[1m[0mdatastore_id[0m[0m                            = "datastore-44551"
      [32m+[0m [0m[1m[0mdefault_ip_address[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mept_rvi_mode[0m[0m                            = "automatic"
      [32m+[0m [0m[1m[0mextra_config_reboot_required[0m[0m            = true
      [32m+[0m [0m[1m[0mfirmware[0m[0m                                = "bios"
      [32m+[0m [0m[1m[0mfolder[0m[0m                                  = "IAC"
      [32m+[0m [0m[1m[0mforce_power_off[0m[0m                         = true
      [32m+[0m [0m[1m[0mguest_id[0m[0m                                = "rhel8_64Guest"
      [32m+[0m [0m[1m[0mguest_ip_addresses[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mhardware_version[0m[0m                        = (known after apply)
      [32m+[0m [0m[1m[0mhost_system_id[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mhv_mode[0m[0m                                 = "hvAuto"
      [32m+[0m [0m[1m[0mid[0m[0m                                      = (known after apply)
      [32m+[0m [0m[1m[0mide_controller_count[0m[0m                    = 2
      [32m+[0m [0m[1m[0mimported[0m[0m                                = (known after apply)
      [32m+[0m [0m[1m[0mlatency_sensitivity[0m[0m                     = "normal"
      [32m+[0m [0m[1m[0mmemory[0m[0m                                  = 16384
      [32m+[0m [0m[1m[0mmemory_limit[0m[0m                            = -1
      [32m+[0m [0m[1m[0mmemory_share_count[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mmemory_share_level[0m[0m                      = "normal"
      [32m+[0m [0m[1m[0mmigrate_wait_timeout[0m[0m                    = 30
      [32m+[0m [0m[1m[0mmoid[0m[0m                                    = (known after apply)
      [32m+[0m [0m[1m[0mname[0m[0m                                    = "u8-o2x-dev218"
      [32m+[0m [0m[1m[0mnum_cores_per_socket[0m[0m                    = 1
      [32m+[0m [0m[1m[0mnum_cpus[0m[0m                                = 8
      [32m+[0m [0m[1m[0mpower_state[0m[0m                             = (known after apply)
      [32m+[0m [0m[1m[0mpoweron_timeout[0m[0m                         = 300
      [32m+[0m [0m[1m[0mreboot_required[0m[0m                         = (known after apply)
      [32m+[0m [0m[1m[0mresource_pool_id[0m[0m                        = "resgroup-44522"
      [32m+[0m [0m[1m[0mrun_tools_scripts_after_power_on[0m[0m        = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_after_resume[0m[0m          = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_before_guest_shutdown[0m[0m = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_before_guest_standby[0m[0m  = true
      [32m+[0m [0m[1m[0msata_controller_count[0m[0m                   = 0
      [32m+[0m [0m[1m[0mscsi_bus_sharing[0m[0m                        = "noSharing"
      [32m+[0m [0m[1m[0mscsi_controller_count[0m[0m                   = 1
      [32m+[0m [0m[1m[0mscsi_type[0m[0m                               = "pvscsi"
      [32m+[0m [0m[1m[0mshutdown_wait_timeout[0m[0m                   = 3
      [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m                       = (known after apply)
      [32m+[0m [0m[1m[0mswap_placement_policy[0m[0m                   = "inherit"
      [32m+[0m [0m[1m[0mtags[0m[0m                                    = [
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:7d472c8b-9b2c-49e1-95d1-7b383aca8067:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:a00d9809-5c0c-436a-89f5-4aeb2594df19:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:dab38fe6-d558-463a-9e4e-77672ee9c014:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:f21e0e80-72cd-4f36-8ebf-42d008362bef:GLOBAL",
        ]
      [32m+[0m [0m[1m[0mtools_upgrade_policy[0m[0m                    = "manual"
      [32m+[0m [0m[1m[0muuid[0m[0m                                    = (known after apply)
      [32m+[0m [0m[1m[0mvapp_transport[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mvmware_tools_status[0m[0m                     = (known after apply)
      [32m+[0m [0m[1m[0mvmx_path[0m[0m                                = (known after apply)
      [32m+[0m [0m[1m[0mwait_for_guest_ip_timeout[0m[0m               = 0
      [32m+[0m [0m[1m[0mwait_for_guest_net_routable[0m[0m             = true
      [32m+[0m [0m[1m[0mwait_for_guest_net_timeout[0m[0m              = 5

      [32m+[0m [0mclone {
          [32m+[0m [0m[1m[0mtemplate_uuid[0m[0m = "420aeedd-9fca-2936-fbcb-b49ec2e89171"
          [32m+[0m [0m[1m[0mtimeout[0m[0m       = 30

          [32m+[0m [0mcustomize {
              [32m+[0m [0m[1m[0mtimeout[0m[0m = 10

              [32m+[0m [0mlinux_options {
                  [32m+[0m [0m[1m[0mdomain[0m[0m       = "hcl.lmco.com"
                  [32m+[0m [0m[1m[0mhost_name[0m[0m    = "u8-o2x-dev218"
                  [32m+[0m [0m[1m[0mhw_clock_utc[0m[0m = true
                }

              [32m+[0m [0mnetwork_interface {}
            }
        }

      [32m+[0m [0mdisk {
          [32m+[0m [0m[1m[0mattach[0m[0m            = false
          [32m+[0m [0m[1m[0mcontroller_type[0m[0m   = "scsi"
          [32m+[0m [0m[1m[0mdatastore_id[0m[0m      = "<computed>"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m    = (known after apply)
          [32m+[0m [0m[1m[0mdisk_mode[0m[0m         = "persistent"
          [32m+[0m [0m[1m[0mdisk_sharing[0m[0m      = "sharingNone"
          [32m+[0m [0m[1m[0meagerly_scrub[0m[0m     = false
          [32m+[0m [0m[1m[0mio_limit[0m[0m          = -1
          [32m+[0m [0m[1m[0mio_reservation[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_count[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_level[0m[0m    = "normal"
          [32m+[0m [0m[1m[0mkeep_on_remove[0m[0m    = false
          [32m+[0m [0m[1m[0mkey[0m[0m               = 0
          [32m+[0m [0m[1m[0mlabel[0m[0m             = "os"
          [32m+[0m [0m[1m[0mpath[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0msize[0m[0m              = 254
          [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mthin_provisioned[0m[0m  = true
          [32m+[0m [0m[1m[0munit_number[0m[0m       = 0
          [32m+[0m [0m[1m[0muuid[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0mwrite_through[0m[0m     = false
        }
      [32m+[0m [0mdisk {
          [32m+[0m [0m[1m[0mattach[0m[0m            = false
          [32m+[0m [0m[1m[0mcontroller_type[0m[0m   = "scsi"
          [32m+[0m [0m[1m[0mdatastore_id[0m[0m      = "<computed>"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m    = (known after apply)
          [32m+[0m [0m[1m[0mdisk_mode[0m[0m         = "persistent"
          [32m+[0m [0m[1m[0mdisk_sharing[0m[0m      = "sharingNone"
          [32m+[0m [0m[1m[0meagerly_scrub[0m[0m     = false
          [32m+[0m [0m[1m[0mio_limit[0m[0m          = -1
          [32m+[0m [0m[1m[0mio_reservation[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_count[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_level[0m[0m    = "normal"
          [32m+[0m [0m[1m[0mkeep_on_remove[0m[0m    = false
          [32m+[0m [0m[1m[0mkey[0m[0m               = 0
          [32m+[0m [0m[1m[0mlabel[0m[0m             = "data"
          [32m+[0m [0m[1m[0mpath[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0msize[0m[0m              = 586
          [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mthin_provisioned[0m[0m  = true
          [32m+[0m [0m[1m[0munit_number[0m[0m       = 1
          [32m+[0m [0m[1m[0muuid[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0mwrite_through[0m[0m     = false
        }

      [32m+[0m [0mnetwork_interface {
          [32m+[0m [0m[1m[0madapter_type[0m[0m          = "vmxnet3"
          [32m+[0m [0m[1m[0mbandwidth_limit[0m[0m       = -1
          [32m+[0m [0m[1m[0mbandwidth_reservation[0m[0m = 0
          [32m+[0m [0m[1m[0mbandwidth_share_count[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mbandwidth_share_level[0m[0m = "normal"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m        = (known after apply)
          [32m+[0m [0m[1m[0mkey[0m[0m                   = (known after apply)
          [32m+[0m [0m[1m[0mmac_address[0m[0m           = (known after apply)
          [32m+[0m [0m[1m[0mnetwork_id[0m[0m            = "dvportgroup-44946"
        }
    }

[1m  # vsphere_virtual_machine.vm["u8-o2x-dev222"][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "vsphere_virtual_machine" "vm" {
      [32m+[0m [0m[1m[0mannotation[0m[0m                              = (known after apply)
      [32m+[0m [0m[1m[0mboot_retry_delay[0m[0m                        = 10000
      [32m+[0m [0m[1m[0mchange_version[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mcpu_limit[0m[0m                               = -1
      [32m+[0m [0m[1m[0mcpu_share_count[0m[0m                         = (known after apply)
      [32m+[0m [0m[1m[0mcpu_share_level[0m[0m                         = "normal"
      [32m+[0m [0m[1m[0mdatastore_id[0m[0m                            = "datastore-44551"
      [32m+[0m [0m[1m[0mdefault_ip_address[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mept_rvi_mode[0m[0m                            = "automatic"
      [32m+[0m [0m[1m[0mextra_config_reboot_required[0m[0m            = true
      [32m+[0m [0m[1m[0mfirmware[0m[0m                                = "bios"
      [32m+[0m [0m[1m[0mfolder[0m[0m                                  = "IAC"
      [32m+[0m [0m[1m[0mforce_power_off[0m[0m                         = true
      [32m+[0m [0m[1m[0mguest_id[0m[0m                                = "rhel8_64Guest"
      [32m+[0m [0m[1m[0mguest_ip_addresses[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mhardware_version[0m[0m                        = (known after apply)
      [32m+[0m [0m[1m[0mhost_system_id[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mhv_mode[0m[0m                                 = "hvAuto"
      [32m+[0m [0m[1m[0mid[0m[0m                                      = (known after apply)
      [32m+[0m [0m[1m[0mide_controller_count[0m[0m                    = 2
      [32m+[0m [0m[1m[0mimported[0m[0m                                = (known after apply)
      [32m+[0m [0m[1m[0mlatency_sensitivity[0m[0m                     = "normal"
      [32m+[0m [0m[1m[0mmemory[0m[0m                                  = 16384
      [32m+[0m [0m[1m[0mmemory_limit[0m[0m                            = -1
      [32m+[0m [0m[1m[0mmemory_share_count[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mmemory_share_level[0m[0m                      = "normal"
      [32m+[0m [0m[1m[0mmigrate_wait_timeout[0m[0m                    = 30
      [32m+[0m [0m[1m[0mmoid[0m[0m                                    = (known after apply)
      [32m+[0m [0m[1m[0mname[0m[0m                                    = "u8-o2x-dev222"
      [32m+[0m [0m[1m[0mnum_cores_per_socket[0m[0m                    = 1
      [32m+[0m [0m[1m[0mnum_cpus[0m[0m                                = 8
      [32m+[0m [0m[1m[0mpower_state[0m[0m                             = (known after apply)
      [32m+[0m [0m[1m[0mpoweron_timeout[0m[0m                         = 300
      [32m+[0m [0m[1m[0mreboot_required[0m[0m                         = (known after apply)
      [32m+[0m [0m[1m[0mresource_pool_id[0m[0m                        = "resgroup-44522"
      [32m+[0m [0m[1m[0mrun_tools_scripts_after_power_on[0m[0m        = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_after_resume[0m[0m          = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_before_guest_shutdown[0m[0m = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_before_guest_standby[0m[0m  = true
      [32m+[0m [0m[1m[0msata_controller_count[0m[0m                   = 0
      [32m+[0m [0m[1m[0mscsi_bus_sharing[0m[0m                        = "noSharing"
      [32m+[0m [0m[1m[0mscsi_controller_count[0m[0m                   = 1
      [32m+[0m [0m[1m[0mscsi_type[0m[0m                               = "pvscsi"
      [32m+[0m [0m[1m[0mshutdown_wait_timeout[0m[0m                   = 3
      [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m                       = (known after apply)
      [32m+[0m [0m[1m[0mswap_placement_policy[0m[0m                   = "inherit"
      [32m+[0m [0m[1m[0mtags[0m[0m                                    = [
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:7d472c8b-9b2c-49e1-95d1-7b383aca8067:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:a00d9809-5c0c-436a-89f5-4aeb2594df19:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:dab38fe6-d558-463a-9e4e-77672ee9c014:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:f21e0e80-72cd-4f36-8ebf-42d008362bef:GLOBAL",
        ]
      [32m+[0m [0m[1m[0mtools_upgrade_policy[0m[0m                    = "manual"
      [32m+[0m [0m[1m[0muuid[0m[0m                                    = (known after apply)
      [32m+[0m [0m[1m[0mvapp_transport[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mvmware_tools_status[0m[0m                     = (known after apply)
      [32m+[0m [0m[1m[0mvmx_path[0m[0m                                = (known after apply)
      [32m+[0m [0m[1m[0mwait_for_guest_ip_timeout[0m[0m               = 0
      [32m+[0m [0m[1m[0mwait_for_guest_net_routable[0m[0m             = true
      [32m+[0m [0m[1m[0mwait_for_guest_net_timeout[0m[0m              = 5

      [32m+[0m [0mclone {
          [32m+[0m [0m[1m[0mtemplate_uuid[0m[0m = "420aeedd-9fca-2936-fbcb-b49ec2e89171"
          [32m+[0m [0m[1m[0mtimeout[0m[0m       = 30

          [32m+[0m [0mcustomize {
              [32m+[0m [0m[1m[0mtimeout[0m[0m = 10

              [32m+[0m [0mlinux_options {
                  [32m+[0m [0m[1m[0mdomain[0m[0m       = "hcl.lmco.com"
                  [32m+[0m [0m[1m[0mhost_name[0m[0m    = "u8-o2x-dev222"
                  [32m+[0m [0m[1m[0mhw_clock_utc[0m[0m = true
                }

              [32m+[0m [0mnetwork_interface {}
            }
        }

      [32m+[0m [0mdisk {
          [32m+[0m [0m[1m[0mattach[0m[0m            = false
          [32m+[0m [0m[1m[0mcontroller_type[0m[0m   = "scsi"
          [32m+[0m [0m[1m[0mdatastore_id[0m[0m      = "<computed>"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m    = (known after apply)
          [32m+[0m [0m[1m[0mdisk_mode[0m[0m         = "persistent"
          [32m+[0m [0m[1m[0mdisk_sharing[0m[0m      = "sharingNone"
          [32m+[0m [0m[1m[0meagerly_scrub[0m[0m     = false
          [32m+[0m [0m[1m[0mio_limit[0m[0m          = -1
          [32m+[0m [0m[1m[0mio_reservation[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_count[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_level[0m[0m    = "normal"
          [32m+[0m [0m[1m[0mkeep_on_remove[0m[0m    = false
          [32m+[0m [0m[1m[0mkey[0m[0m               = 0
          [32m+[0m [0m[1m[0mlabel[0m[0m             = "os"
          [32m+[0m [0m[1m[0mpath[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0msize[0m[0m              = 254
          [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mthin_provisioned[0m[0m  = true
          [32m+[0m [0m[1m[0munit_number[0m[0m       = 0
          [32m+[0m [0m[1m[0muuid[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0mwrite_through[0m[0m     = false
        }
      [32m+[0m [0mdisk {
          [32m+[0m [0m[1m[0mattach[0m[0m            = false
          [32m+[0m [0m[1m[0mcontroller_type[0m[0m   = "scsi"
          [32m+[0m [0m[1m[0mdatastore_id[0m[0m      = "<computed>"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m    = (known after apply)
          [32m+[0m [0m[1m[0mdisk_mode[0m[0m         = "persistent"
          [32m+[0m [0m[1m[0mdisk_sharing[0m[0m      = "sharingNone"
          [32m+[0m [0m[1m[0meagerly_scrub[0m[0m     = false
          [32m+[0m [0m[1m[0mio_limit[0m[0m          = -1
          [32m+[0m [0m[1m[0mio_reservation[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_count[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_level[0m[0m    = "normal"
          [32m+[0m [0m[1m[0mkeep_on_remove[0m[0m    = false
          [32m+[0m [0m[1m[0mkey[0m[0m               = 0
          [32m+[0m [0m[1m[0mlabel[0m[0m             = "data"
          [32m+[0m [0m[1m[0mpath[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0msize[0m[0m              = 586
          [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mthin_provisioned[0m[0m  = true
          [32m+[0m [0m[1m[0munit_number[0m[0m       = 1
          [32m+[0m [0m[1m[0muuid[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0mwrite_through[0m[0m     = false
        }

      [32m+[0m [0mnetwork_interface {
          [32m+[0m [0m[1m[0madapter_type[0m[0m          = "vmxnet3"
          [32m+[0m [0m[1m[0mbandwidth_limit[0m[0m       = -1
          [32m+[0m [0m[1m[0mbandwidth_reservation[0m[0m = 0
          [32m+[0m [0m[1m[0mbandwidth_share_count[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mbandwidth_share_level[0m[0m = "normal"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m        = (known after apply)
          [32m+[0m [0m[1m[0mkey[0m[0m                   = (known after apply)
          [32m+[0m [0m[1m[0mmac_address[0m[0m           = (known after apply)
          [32m+[0m [0m[1m[0mnetwork_id[0m[0m            = "dvportgroup-44946"
        }
    }

[1m  # vsphere_virtual_machine.vm["u8-o2x-dev223"][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "vsphere_virtual_machine" "vm" {
      [32m+[0m [0m[1m[0mannotation[0m[0m                              = (known after apply)
      [32m+[0m [0m[1m[0mboot_retry_delay[0m[0m                        = 10000
      [32m+[0m [0m[1m[0mchange_version[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mcpu_limit[0m[0m                               = -1
      [32m+[0m [0m[1m[0mcpu_share_count[0m[0m                         = (known after apply)
      [32m+[0m [0m[1m[0mcpu_share_level[0m[0m                         = "normal"
      [32m+[0m [0m[1m[0mdatastore_id[0m[0m                            = "datastore-44551"
      [32m+[0m [0m[1m[0mdefault_ip_address[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mept_rvi_mode[0m[0m                            = "automatic"
      [32m+[0m [0m[1m[0mextra_config_reboot_required[0m[0m            = true
      [32m+[0m [0m[1m[0mfirmware[0m[0m                                = "bios"
      [32m+[0m [0m[1m[0mfolder[0m[0m                                  = "IAC"
      [32m+[0m [0m[1m[0mforce_power_off[0m[0m                         = true
      [32m+[0m [0m[1m[0mguest_id[0m[0m                                = "rhel8_64Guest"
      [32m+[0m [0m[1m[0mguest_ip_addresses[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mhardware_version[0m[0m                        = (known after apply)
      [32m+[0m [0m[1m[0mhost_system_id[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mhv_mode[0m[0m                                 = "hvAuto"
      [32m+[0m [0m[1m[0mid[0m[0m                                      = (known after apply)
      [32m+[0m [0m[1m[0mide_controller_count[0m[0m                    = 2
      [32m+[0m [0m[1m[0mimported[0m[0m                                = (known after apply)
      [32m+[0m [0m[1m[0mlatency_sensitivity[0m[0m                     = "normal"
      [32m+[0m [0m[1m[0mmemory[0m[0m                                  = 16384
      [32m+[0m [0m[1m[0mmemory_limit[0m[0m                            = -1
      [32m+[0m [0m[1m[0mmemory_share_count[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mmemory_share_level[0m[0m                      = "normal"
      [32m+[0m [0m[1m[0mmigrate_wait_timeout[0m[0m                    = 30
      [32m+[0m [0m[1m[0mmoid[0m[0m                                    = (known after apply)
      [32m+[0m [0m[1m[0mname[0m[0m                                    = "u8-o2x-dev223"
      [32m+[0m [0m[1m[0mnum_cores_per_socket[0m[0m                    = 1
      [32m+[0m [0m[1m[0mnum_cpus[0m[0m                                = 8
      [32m+[0m [0m[1m[0mpower_state[0m[0m                             = (known after apply)
      [32m+[0m [0m[1m[0mpoweron_timeout[0m[0m                         = 300
      [32m+[0m [0m[1m[0mreboot_required[0m[0m                         = (known after apply)
      [32m+[0m [0m[1m[0mresource_pool_id[0m[0m                        = "resgroup-44522"
      [32m+[0m [0m[1m[0mrun_tools_scripts_after_power_on[0m[0m        = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_after_resume[0m[0m          = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_before_guest_shutdown[0m[0m = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_before_guest_standby[0m[0m  = true
      [32m+[0m [0m[1m[0msata_controller_count[0m[0m                   = 0
      [32m+[0m [0m[1m[0mscsi_bus_sharing[0m[0m                        = "noSharing"
      [32m+[0m [0m[1m[0mscsi_controller_count[0m[0m                   = 1
      [32m+[0m [0m[1m[0mscsi_type[0m[0m                               = "pvscsi"
      [32m+[0m [0m[1m[0mshutdown_wait_timeout[0m[0m                   = 3
      [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m                       = (known after apply)
      [32m+[0m [0m[1m[0mswap_placement_policy[0m[0m                   = "inherit"
      [32m+[0m [0m[1m[0mtags[0m[0m                                    = [
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:7d472c8b-9b2c-49e1-95d1-7b383aca8067:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:a00d9809-5c0c-436a-89f5-4aeb2594df19:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:dab38fe6-d558-463a-9e4e-77672ee9c014:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:f21e0e80-72cd-4f36-8ebf-42d008362bef:GLOBAL",
        ]
      [32m+[0m [0m[1m[0mtools_upgrade_policy[0m[0m                    = "manual"
      [32m+[0m [0m[1m[0muuid[0m[0m                                    = (known after apply)
      [32m+[0m [0m[1m[0mvapp_transport[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mvmware_tools_status[0m[0m                     = (known after apply)
      [32m+[0m [0m[1m[0mvmx_path[0m[0m                                = (known after apply)
      [32m+[0m [0m[1m[0mwait_for_guest_ip_timeout[0m[0m               = 0
      [32m+[0m [0m[1m[0mwait_for_guest_net_routable[0m[0m             = true
      [32m+[0m [0m[1m[0mwait_for_guest_net_timeout[0m[0m              = 5

      [32m+[0m [0mclone {
          [32m+[0m [0m[1m[0mtemplate_uuid[0m[0m = "420aeedd-9fca-2936-fbcb-b49ec2e89171"
          [32m+[0m [0m[1m[0mtimeout[0m[0m       = 30

          [32m+[0m [0mcustomize {
              [32m+[0m [0m[1m[0mtimeout[0m[0m = 10

              [32m+[0m [0mlinux_options {
                  [32m+[0m [0m[1m[0mdomain[0m[0m       = "hcl.lmco.com"
                  [32m+[0m [0m[1m[0mhost_name[0m[0m    = "u8-o2x-dev223"
                  [32m+[0m [0m[1m[0mhw_clock_utc[0m[0m = true
                }

              [32m+[0m [0mnetwork_interface {}
            }
        }

      [32m+[0m [0mdisk {
          [32m+[0m [0m[1m[0mattach[0m[0m            = false
          [32m+[0m [0m[1m[0mcontroller_type[0m[0m   = "scsi"
          [32m+[0m [0m[1m[0mdatastore_id[0m[0m      = "<computed>"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m    = (known after apply)
          [32m+[0m [0m[1m[0mdisk_mode[0m[0m         = "persistent"
          [32m+[0m [0m[1m[0mdisk_sharing[0m[0m      = "sharingNone"
          [32m+[0m [0m[1m[0meagerly_scrub[0m[0m     = false
          [32m+[0m [0m[1m[0mio_limit[0m[0m          = -1
          [32m+[0m [0m[1m[0mio_reservation[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_count[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_level[0m[0m    = "normal"
          [32m+[0m [0m[1m[0mkeep_on_remove[0m[0m    = false
          [32m+[0m [0m[1m[0mkey[0m[0m               = 0
          [32m+[0m [0m[1m[0mlabel[0m[0m             = "os"
          [32m+[0m [0m[1m[0mpath[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0msize[0m[0m              = 254
          [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mthin_provisioned[0m[0m  = true
          [32m+[0m [0m[1m[0munit_number[0m[0m       = 0
          [32m+[0m [0m[1m[0muuid[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0mwrite_through[0m[0m     = false
        }
      [32m+[0m [0mdisk {
          [32m+[0m [0m[1m[0mattach[0m[0m            = false
          [32m+[0m [0m[1m[0mcontroller_type[0m[0m   = "scsi"
          [32m+[0m [0m[1m[0mdatastore_id[0m[0m      = "<computed>"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m    = (known after apply)
          [32m+[0m [0m[1m[0mdisk_mode[0m[0m         = "persistent"
          [32m+[0m [0m[1m[0mdisk_sharing[0m[0m      = "sharingNone"
          [32m+[0m [0m[1m[0meagerly_scrub[0m[0m     = false
          [32m+[0m [0m[1m[0mio_limit[0m[0m          = -1
          [32m+[0m [0m[1m[0mio_reservation[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_count[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_level[0m[0m    = "normal"
          [32m+[0m [0m[1m[0mkeep_on_remove[0m[0m    = false
          [32m+[0m [0m[1m[0mkey[0m[0m               = 0
          [32m+[0m [0m[1m[0mlabel[0m[0m             = "data"
          [32m+[0m [0m[1m[0mpath[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0msize[0m[0m              = 586
          [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mthin_provisioned[0m[0m  = true
          [32m+[0m [0m[1m[0munit_number[0m[0m       = 1
          [32m+[0m [0m[1m[0muuid[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0mwrite_through[0m[0m     = false
        }

      [32m+[0m [0mnetwork_interface {
          [32m+[0m [0m[1m[0madapter_type[0m[0m          = "vmxnet3"
          [32m+[0m [0m[1m[0mbandwidth_limit[0m[0m       = -1
          [32m+[0m [0m[1m[0mbandwidth_reservation[0m[0m = 0
          [32m+[0m [0m[1m[0mbandwidth_share_count[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mbandwidth_share_level[0m[0m = "normal"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m        = (known after apply)
          [32m+[0m [0m[1m[0mkey[0m[0m                   = (known after apply)
          [32m+[0m [0m[1m[0mmac_address[0m[0m           = (known after apply)
          [32m+[0m [0m[1m[0mnetwork_id[0m[0m            = "dvportgroup-44946"
        }
    }

[1m  # vsphere_virtual_machine.vm["u8-o2x-dev250"][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "vsphere_virtual_machine" "vm" {
      [32m+[0m [0m[1m[0mannotation[0m[0m                              = (known after apply)
      [32m+[0m [0m[1m[0mboot_retry_delay[0m[0m                        = 10000
      [32m+[0m [0m[1m[0mchange_version[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mcpu_limit[0m[0m                               = -1
      [32m+[0m [0m[1m[0mcpu_share_count[0m[0m                         = (known after apply)
      [32m+[0m [0m[1m[0mcpu_share_level[0m[0m                         = "normal"
      [32m+[0m [0m[1m[0mdatastore_id[0m[0m                            = "datastore-44551"
      [32m+[0m [0m[1m[0mdefault_ip_address[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mept_rvi_mode[0m[0m                            = "automatic"
      [32m+[0m [0m[1m[0mextra_config_reboot_required[0m[0m            = true
      [32m+[0m [0m[1m[0mfirmware[0m[0m                                = "bios"
      [32m+[0m [0m[1m[0mfolder[0m[0m                                  = "IAC"
      [32m+[0m [0m[1m[0mforce_power_off[0m[0m                         = true
      [32m+[0m [0m[1m[0mguest_id[0m[0m                                = "rhel8_64Guest"
      [32m+[0m [0m[1m[0mguest_ip_addresses[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mhardware_version[0m[0m                        = (known after apply)
      [32m+[0m [0m[1m[0mhost_system_id[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mhv_mode[0m[0m                                 = "hvAuto"
      [32m+[0m [0m[1m[0mid[0m[0m                                      = (known after apply)
      [32m+[0m [0m[1m[0mide_controller_count[0m[0m                    = 2
      [32m+[0m [0m[1m[0mimported[0m[0m                                = (known after apply)
      [32m+[0m [0m[1m[0mlatency_sensitivity[0m[0m                     = "normal"
      [32m+[0m [0m[1m[0mmemory[0m[0m                                  = 16384
      [32m+[0m [0m[1m[0mmemory_limit[0m[0m                            = -1
      [32m+[0m [0m[1m[0mmemory_share_count[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mmemory_share_level[0m[0m                      = "normal"
      [32m+[0m [0m[1m[0mmigrate_wait_timeout[0m[0m                    = 30
      [32m+[0m [0m[1m[0mmoid[0m[0m                                    = (known after apply)
      [32m+[0m [0m[1m[0mname[0m[0m                                    = "u8-o2x-dev250"
      [32m+[0m [0m[1m[0mnum_cores_per_socket[0m[0m                    = 1
      [32m+[0m [0m[1m[0mnum_cpus[0m[0m                                = 8
      [32m+[0m [0m[1m[0mpower_state[0m[0m                             = (known after apply)
      [32m+[0m [0m[1m[0mpoweron_timeout[0m[0m                         = 300
      [32m+[0m [0m[1m[0mreboot_required[0m[0m                         = (known after apply)
      [32m+[0m [0m[1m[0mresource_pool_id[0m[0m                        = "resgroup-44522"
      [32m+[0m [0m[1m[0mrun_tools_scripts_after_power_on[0m[0m        = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_after_resume[0m[0m          = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_before_guest_shutdown[0m[0m = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_before_guest_standby[0m[0m  = true
      [32m+[0m [0m[1m[0msata_controller_count[0m[0m                   = 0
      [32m+[0m [0m[1m[0mscsi_bus_sharing[0m[0m                        = "noSharing"
      [32m+[0m [0m[1m[0mscsi_controller_count[0m[0m                   = 1
      [32m+[0m [0m[1m[0mscsi_type[0m[0m                               = "pvscsi"
      [32m+[0m [0m[1m[0mshutdown_wait_timeout[0m[0m                   = 3
      [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m                       = (known after apply)
      [32m+[0m [0m[1m[0mswap_placement_policy[0m[0m                   = "inherit"
      [32m+[0m [0m[1m[0mtags[0m[0m                                    = [
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:7d472c8b-9b2c-49e1-95d1-7b383aca8067:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:a00d9809-5c0c-436a-89f5-4aeb2594df19:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:dab38fe6-d558-463a-9e4e-77672ee9c014:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:f21e0e80-72cd-4f36-8ebf-42d008362bef:GLOBAL",
        ]
      [32m+[0m [0m[1m[0mtools_upgrade_policy[0m[0m                    = "manual"
      [32m+[0m [0m[1m[0muuid[0m[0m                                    = (known after apply)
      [32m+[0m [0m[1m[0mvapp_transport[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mvmware_tools_status[0m[0m                     = (known after apply)
      [32m+[0m [0m[1m[0mvmx_path[0m[0m                                = (known after apply)
      [32m+[0m [0m[1m[0mwait_for_guest_ip_timeout[0m[0m               = 0
      [32m+[0m [0m[1m[0mwait_for_guest_net_routable[0m[0m             = true
      [32m+[0m [0m[1m[0mwait_for_guest_net_timeout[0m[0m              = 5

      [32m+[0m [0mclone {
          [32m+[0m [0m[1m[0mtemplate_uuid[0m[0m = "420aeedd-9fca-2936-fbcb-b49ec2e89171"
          [32m+[0m [0m[1m[0mtimeout[0m[0m       = 30

          [32m+[0m [0mcustomize {
              [32m+[0m [0m[1m[0mtimeout[0m[0m = 10

              [32m+[0m [0mlinux_options {
                  [32m+[0m [0m[1m[0mdomain[0m[0m       = "hcl.lmco.com"
                  [32m+[0m [0m[1m[0mhost_name[0m[0m    = "u8-o2x-dev250"
                  [32m+[0m [0m[1m[0mhw_clock_utc[0m[0m = true
                }

              [32m+[0m [0mnetwork_interface {}
            }
        }

      [32m+[0m [0mdisk {
          [32m+[0m [0m[1m[0mattach[0m[0m            = false
          [32m+[0m [0m[1m[0mcontroller_type[0m[0m   = "scsi"
          [32m+[0m [0m[1m[0mdatastore_id[0m[0m      = "<computed>"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m    = (known after apply)
          [32m+[0m [0m[1m[0mdisk_mode[0m[0m         = "persistent"
          [32m+[0m [0m[1m[0mdisk_sharing[0m[0m      = "sharingNone"
          [32m+[0m [0m[1m[0meagerly_scrub[0m[0m     = false
          [32m+[0m [0m[1m[0mio_limit[0m[0m          = -1
          [32m+[0m [0m[1m[0mio_reservation[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_count[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_level[0m[0m    = "normal"
          [32m+[0m [0m[1m[0mkeep_on_remove[0m[0m    = false
          [32m+[0m [0m[1m[0mkey[0m[0m               = 0
          [32m+[0m [0m[1m[0mlabel[0m[0m             = "os"
          [32m+[0m [0m[1m[0mpath[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0msize[0m[0m              = 254
          [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mthin_provisioned[0m[0m  = true
          [32m+[0m [0m[1m[0munit_number[0m[0m       = 0
          [32m+[0m [0m[1m[0muuid[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0mwrite_through[0m[0m     = false
        }
      [32m+[0m [0mdisk {
          [32m+[0m [0m[1m[0mattach[0m[0m            = false
          [32m+[0m [0m[1m[0mcontroller_type[0m[0m   = "scsi"
          [32m+[0m [0m[1m[0mdatastore_id[0m[0m      = "<computed>"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m    = (known after apply)
          [32m+[0m [0m[1m[0mdisk_mode[0m[0m         = "persistent"
          [32m+[0m [0m[1m[0mdisk_sharing[0m[0m      = "sharingNone"
          [32m+[0m [0m[1m[0meagerly_scrub[0m[0m     = false
          [32m+[0m [0m[1m[0mio_limit[0m[0m          = -1
          [32m+[0m [0m[1m[0mio_reservation[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_count[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_level[0m[0m    = "normal"
          [32m+[0m [0m[1m[0mkeep_on_remove[0m[0m    = false
          [32m+[0m [0m[1m[0mkey[0m[0m               = 0
          [32m+[0m [0m[1m[0mlabel[0m[0m             = "data"
          [32m+[0m [0m[1m[0mpath[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0msize[0m[0m              = 586
          [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mthin_provisioned[0m[0m  = true
          [32m+[0m [0m[1m[0munit_number[0m[0m       = 1
          [32m+[0m [0m[1m[0muuid[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0mwrite_through[0m[0m     = false
        }

      [32m+[0m [0mnetwork_interface {
          [32m+[0m [0m[1m[0madapter_type[0m[0m          = "vmxnet3"
          [32m+[0m [0m[1m[0mbandwidth_limit[0m[0m       = -1
          [32m+[0m [0m[1m[0mbandwidth_reservation[0m[0m = 0
          [32m+[0m [0m[1m[0mbandwidth_share_count[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mbandwidth_share_level[0m[0m = "normal"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m        = (known after apply)
          [32m+[0m [0m[1m[0mkey[0m[0m                   = (known after apply)
          [32m+[0m [0m[1m[0mmac_address[0m[0m           = (known after apply)
          [32m+[0m [0m[1m[0mnetwork_id[0m[0m            = "dvportgroup-44946"
        }
    }

[1m  # vsphere_virtual_machine.vm["u8-o2x-gpu022"][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "vsphere_virtual_machine" "vm" {
      [32m+[0m [0m[1m[0mannotation[0m[0m                              = (known after apply)
      [32m+[0m [0m[1m[0mboot_retry_delay[0m[0m                        = 10000
      [32m+[0m [0m[1m[0mchange_version[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mcpu_limit[0m[0m                               = -1
      [32m+[0m [0m[1m[0mcpu_share_count[0m[0m                         = (known after apply)
      [32m+[0m [0m[1m[0mcpu_share_level[0m[0m                         = "normal"
      [32m+[0m [0m[1m[0mdatastore_id[0m[0m                            = "datastore-44551"
      [32m+[0m [0m[1m[0mdefault_ip_address[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mept_rvi_mode[0m[0m                            = "automatic"
      [32m+[0m [0m[1m[0mextra_config_reboot_required[0m[0m            = true
      [32m+[0m [0m[1m[0mfirmware[0m[0m                                = "bios"
      [32m+[0m [0m[1m[0mfolder[0m[0m                                  = "IAC"
      [32m+[0m [0m[1m[0mforce_power_off[0m[0m                         = true
      [32m+[0m [0m[1m[0mguest_id[0m[0m                                = "rhel8_64Guest"
      [32m+[0m [0m[1m[0mguest_ip_addresses[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mhardware_version[0m[0m                        = (known after apply)
      [32m+[0m [0m[1m[0mhost_system_id[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mhv_mode[0m[0m                                 = "hvAuto"
      [32m+[0m [0m[1m[0mid[0m[0m                                      = (known after apply)
      [32m+[0m [0m[1m[0mide_controller_count[0m[0m                    = 2
      [32m+[0m [0m[1m[0mimported[0m[0m                                = (known after apply)
      [32m+[0m [0m[1m[0mlatency_sensitivity[0m[0m                     = "normal"
      [32m+[0m [0m[1m[0mmemory[0m[0m                                  = 16384
      [32m+[0m [0m[1m[0mmemory_limit[0m[0m                            = -1
      [32m+[0m [0m[1m[0mmemory_share_count[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mmemory_share_level[0m[0m                      = "normal"
      [32m+[0m [0m[1m[0mmigrate_wait_timeout[0m[0m                    = 30
      [32m+[0m [0m[1m[0mmoid[0m[0m                                    = (known after apply)
      [32m+[0m [0m[1m[0mname[0m[0m                                    = "u8-o2x-gpu022"
      [32m+[0m [0m[1m[0mnum_cores_per_socket[0m[0m                    = 1
      [32m+[0m [0m[1m[0mnum_cpus[0m[0m                                = 8
      [32m+[0m [0m[1m[0mpower_state[0m[0m                             = (known after apply)
      [32m+[0m [0m[1m[0mpoweron_timeout[0m[0m                         = 300
      [32m+[0m [0m[1m[0mreboot_required[0m[0m                         = (known after apply)
      [32m+[0m [0m[1m[0mresource_pool_id[0m[0m                        = "resgroup-44522"
      [32m+[0m [0m[1m[0mrun_tools_scripts_after_power_on[0m[0m        = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_after_resume[0m[0m          = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_before_guest_shutdown[0m[0m = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_before_guest_standby[0m[0m  = true
      [32m+[0m [0m[1m[0msata_controller_count[0m[0m                   = 0
      [32m+[0m [0m[1m[0mscsi_bus_sharing[0m[0m                        = "noSharing"
      [32m+[0m [0m[1m[0mscsi_controller_count[0m[0m                   = 1
      [32m+[0m [0m[1m[0mscsi_type[0m[0m                               = "pvscsi"
      [32m+[0m [0m[1m[0mshutdown_wait_timeout[0m[0m                   = 3
      [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m                       = (known after apply)
      [32m+[0m [0m[1m[0mswap_placement_policy[0m[0m                   = "inherit"
      [32m+[0m [0m[1m[0mtags[0m[0m                                    = [
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:7d472c8b-9b2c-49e1-95d1-7b383aca8067:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:83a73fc7-224a-461a-8083-66c5a8d43656:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:a00d9809-5c0c-436a-89f5-4aeb2594df19:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:dab38fe6-d558-463a-9e4e-77672ee9c014:GLOBAL",
        ]
      [32m+[0m [0m[1m[0mtools_upgrade_policy[0m[0m                    = "manual"
      [32m+[0m [0m[1m[0muuid[0m[0m                                    = (known after apply)
      [32m+[0m [0m[1m[0mvapp_transport[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mvmware_tools_status[0m[0m                     = (known after apply)
      [32m+[0m [0m[1m[0mvmx_path[0m[0m                                = (known after apply)
      [32m+[0m [0m[1m[0mwait_for_guest_ip_timeout[0m[0m               = 0
      [32m+[0m [0m[1m[0mwait_for_guest_net_routable[0m[0m             = true
      [32m+[0m [0m[1m[0mwait_for_guest_net_timeout[0m[0m              = 5

      [32m+[0m [0mclone {
          [32m+[0m [0m[1m[0mtemplate_uuid[0m[0m = "420aeedd-9fca-2936-fbcb-b49ec2e89171"
          [32m+[0m [0m[1m[0mtimeout[0m[0m       = 30

          [32m+[0m [0mcustomize {
              [32m+[0m [0m[1m[0mtimeout[0m[0m = 10

              [32m+[0m [0mlinux_options {
                  [32m+[0m [0m[1m[0mdomain[0m[0m       = "hcl.lmco.com"
                  [32m+[0m [0m[1m[0mhost_name[0m[0m    = "u8-o2x-gpu022"
                  [32m+[0m [0m[1m[0mhw_clock_utc[0m[0m = true
                }

              [32m+[0m [0mnetwork_interface {}
            }
        }

      [32m+[0m [0mdisk {
          [32m+[0m [0m[1m[0mattach[0m[0m            = false
          [32m+[0m [0m[1m[0mcontroller_type[0m[0m   = "scsi"
          [32m+[0m [0m[1m[0mdatastore_id[0m[0m      = "<computed>"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m    = (known after apply)
          [32m+[0m [0m[1m[0mdisk_mode[0m[0m         = "persistent"
          [32m+[0m [0m[1m[0mdisk_sharing[0m[0m      = "sharingNone"
          [32m+[0m [0m[1m[0meagerly_scrub[0m[0m     = false
          [32m+[0m [0m[1m[0mio_limit[0m[0m          = -1
          [32m+[0m [0m[1m[0mio_reservation[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_count[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_level[0m[0m    = "normal"
          [32m+[0m [0m[1m[0mkeep_on_remove[0m[0m    = false
          [32m+[0m [0m[1m[0mkey[0m[0m               = 0
          [32m+[0m [0m[1m[0mlabel[0m[0m             = "os"
          [32m+[0m [0m[1m[0mpath[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0msize[0m[0m              = 254
          [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mthin_provisioned[0m[0m  = true
          [32m+[0m [0m[1m[0munit_number[0m[0m       = 0
          [32m+[0m [0m[1m[0muuid[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0mwrite_through[0m[0m     = false
        }
      [32m+[0m [0mdisk {
          [32m+[0m [0m[1m[0mattach[0m[0m            = false
          [32m+[0m [0m[1m[0mcontroller_type[0m[0m   = "scsi"
          [32m+[0m [0m[1m[0mdatastore_id[0m[0m      = "<computed>"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m    = (known after apply)
          [32m+[0m [0m[1m[0mdisk_mode[0m[0m         = "persistent"
          [32m+[0m [0m[1m[0mdisk_sharing[0m[0m      = "sharingNone"
          [32m+[0m [0m[1m[0meagerly_scrub[0m[0m     = false
          [32m+[0m [0m[1m[0mio_limit[0m[0m          = -1
          [32m+[0m [0m[1m[0mio_reservation[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_count[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_level[0m[0m    = "normal"
          [32m+[0m [0m[1m[0mkeep_on_remove[0m[0m    = false
          [32m+[0m [0m[1m[0mkey[0m[0m               = 0
          [32m+[0m [0m[1m[0mlabel[0m[0m             = "data"
          [32m+[0m [0m[1m[0mpath[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0msize[0m[0m              = 586
          [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mthin_provisioned[0m[0m  = true
          [32m+[0m [0m[1m[0munit_number[0m[0m       = 1
          [32m+[0m [0m[1m[0muuid[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0mwrite_through[0m[0m     = false
        }

      [32m+[0m [0mnetwork_interface {
          [32m+[0m [0m[1m[0madapter_type[0m[0m          = "vmxnet3"
          [32m+[0m [0m[1m[0mbandwidth_limit[0m[0m       = -1
          [32m+[0m [0m[1m[0mbandwidth_reservation[0m[0m = 0
          [32m+[0m [0m[1m[0mbandwidth_share_count[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mbandwidth_share_level[0m[0m = "normal"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m        = (known after apply)
          [32m+[0m [0m[1m[0mkey[0m[0m                   = (known after apply)
          [32m+[0m [0m[1m[0mmac_address[0m[0m           = (known after apply)
          [32m+[0m [0m[1m[0mnetwork_id[0m[0m            = "dvportgroup-44946"
        }
    }

[1m  # vsphere_virtual_machine.vm["u8-o2x-gpu025"][0m will be updated in-place[0m[0m
[0m  [33m~[0m[0m resource "vsphere_virtual_machine" "vm" {
      [33m~[0m [0m[1m[0mdatastore_id[0m[0m                            = "datastore-136553" [33m->[0m [0m"datastore-44551"
      [33m~[0m [0m[1m[0mhost_system_id[0m[0m                          = "host-84666" [33m->[0m [0m(known after apply)
        [1m[0mid[0m[0m                                      = "420a5f04-adf2-4ac9-1ead-e1352219b43b"
      [31m-[0m [0m[1m[0mmemory_reservation[0m[0m                      = 16384 [90m->[0m [0m[90mnull[0m[0m
        [1m[0mname[0m[0m                                    = "u8-o2x-gpu025"
      [33m~[0m [0m[1m[0mresource_pool_id[0m[0m                        = "resgroup-136552" [33m->[0m [0m"resgroup-44522"
        [1m[0mtags[0m[0m                                    = [
            "urn:vmomi:InventoryServiceTag:7d472c8b-9b2c-49e1-95d1-7b383aca8067:GLOBAL",
            "urn:vmomi:InventoryServiceTag:83a73fc7-224a-461a-8083-66c5a8d43656:GLOBAL",
            "urn:vmomi:InventoryServiceTag:a00d9809-5c0c-436a-89f5-4aeb2594df19:GLOBAL",
            "urn:vmomi:InventoryServiceTag:dab38fe6-d558-463a-9e4e-77672ee9c014:GLOBAL",
        ]
        [90m# (66 unchanged attributes hidden)[0m[0m

        [90m# (4 unchanged blocks hidden)[0m[0m
    }

[1m  # vsphere_virtual_machine.vm["u8-o2x-gpu026"][0m will be updated in-place[0m[0m
[0m  [33m~[0m[0m resource "vsphere_virtual_machine" "vm" {
      [33m~[0m [0m[1m[0mdatastore_id[0m[0m                            = "datastore-136553" [33m->[0m [0m"datastore-44551"
      [33m~[0m [0m[1m[0mhost_system_id[0m[0m                          = "host-70611" [33m->[0m [0m(known after apply)
        [1m[0mid[0m[0m                                      = "420aeb0b-2cbf-9be1-123a-036e545ab89a"
      [31m-[0m [0m[1m[0mmemory_reservation[0m[0m                      = 16384 [90m->[0m [0m[90mnull[0m[0m
        [1m[0mname[0m[0m                                    = "u8-o2x-gpu026"
      [33m~[0m [0m[1m[0mresource_pool_id[0m[0m                        = "resgroup-136552" [33m->[0m [0m"resgroup-44522"
        [1m[0mtags[0m[0m                                    = [
            "urn:vmomi:InventoryServiceTag:7d472c8b-9b2c-49e1-95d1-7b383aca8067:GLOBAL",
            "urn:vmomi:InventoryServiceTag:83a73fc7-224a-461a-8083-66c5a8d43656:GLOBAL",
            "urn:vmomi:InventoryServiceTag:a00d9809-5c0c-436a-89f5-4aeb2594df19:GLOBAL",
            "urn:vmomi:InventoryServiceTag:dab38fe6-d558-463a-9e4e-77672ee9c014:GLOBAL",
        ]
        [90m# (66 unchanged attributes hidden)[0m[0m

        [90m# (4 unchanged blocks hidden)[0m[0m
    }

[1m  # vsphere_virtual_machine.vm["u8-o2x-gpu027"][0m will be updated in-place[0m[0m
[0m  [33m~[0m[0m resource "vsphere_virtual_machine" "vm" {
      [33m~[0m [0m[1m[0mdatastore_id[0m[0m                            = "datastore-136553" [33m->[0m [0m"datastore-44551"
      [33m~[0m [0m[1m[0mhost_system_id[0m[0m                          = "host-70611" [33m->[0m [0m(known after apply)
        [1m[0mid[0m[0m                                      = "420a58f7-8111-dec8-d7be-8afdc6290053"
      [31m-[0m [0m[1m[0mmemory_reservation[0m[0m                      = 16384 [90m->[0m [0m[90mnull[0m[0m
        [1m[0mname[0m[0m                                    = "u8-o2x-gpu027"
      [33m~[0m [0m[1m[0mresource_pool_id[0m[0m                        = "resgroup-136552" [33m->[0m [0m"resgroup-44522"
        [1m[0mtags[0m[0m                                    = [
            "urn:vmomi:InventoryServiceTag:7d472c8b-9b2c-49e1-95d1-7b383aca8067:GLOBAL",
            "urn:vmomi:InventoryServiceTag:83a73fc7-224a-461a-8083-66c5a8d43656:GLOBAL",
            "urn:vmomi:InventoryServiceTag:a00d9809-5c0c-436a-89f5-4aeb2594df19:GLOBAL",
            "urn:vmomi:InventoryServiceTag:dab38fe6-d558-463a-9e4e-77672ee9c014:GLOBAL",
        ]
        [90m# (66 unchanged attributes hidden)[0m[0m

        [90m# (4 unchanged blocks hidden)[0m[0m
    }

[1m  # vsphere_virtual_machine.vm["u8-o2x-gpu028"][0m will be updated in-place[0m[0m
[0m  [33m~[0m[0m resource "vsphere_virtual_machine" "vm" {
      [33m~[0m [0m[1m[0mdatastore_id[0m[0m                            = "datastore-136553" [33m->[0m [0m"datastore-44551"
      [33m~[0m [0m[1m[0mhost_system_id[0m[0m                          = "host-84666" [33m->[0m [0m(known after apply)
        [1m[0mid[0m[0m                                      = "420ac566-a3eb-6471-6a3f-d053ced06af7"
      [31m-[0m [0m[1m[0mmemory_reservation[0m[0m                      = 16384 [90m->[0m [0m[90mnull[0m[0m
        [1m[0mname[0m[0m                                    = "u8-o2x-gpu028"
      [33m~[0m [0m[1m[0mresource_pool_id[0m[0m                        = "resgroup-136552" [33m->[0m [0m"resgroup-44522"
        [1m[0mtags[0m[0m                                    = [
            "urn:vmomi:InventoryServiceTag:7d472c8b-9b2c-49e1-95d1-7b383aca8067:GLOBAL",
            "urn:vmomi:InventoryServiceTag:83a73fc7-224a-461a-8083-66c5a8d43656:GLOBAL",
            "urn:vmomi:InventoryServiceTag:a00d9809-5c0c-436a-89f5-4aeb2594df19:GLOBAL",
            "urn:vmomi:InventoryServiceTag:dab38fe6-d558-463a-9e4e-77672ee9c014:GLOBAL",
        ]
        [90m# (66 unchanged attributes hidden)[0m[0m

        [90m# (4 unchanged blocks hidden)[0m[0m
    }

[1m  # vsphere_virtual_machine.vm["u8-o2x-gpu029"][0m will be updated in-place[0m[0m
[0m  [33m~[0m[0m resource "vsphere_virtual_machine" "vm" {
      [33m~[0m [0m[1m[0mdatastore_id[0m[0m                            = "datastore-136553" [33m->[0m [0m"datastore-44551"
      [33m~[0m [0m[1m[0mhost_system_id[0m[0m                          = "host-70611" [33m->[0m [0m(known after apply)
        [1m[0mid[0m[0m                                      = "420af31f-b08a-89d2-0017-dbe317cbedc6"
      [31m-[0m [0m[1m[0mmemory_reservation[0m[0m                      = 16384 [90m->[0m [0m[90mnull[0m[0m
        [1m[0mname[0m[0m                                    = "u8-o2x-gpu029"
      [33m~[0m [0m[1m[0mresource_pool_id[0m[0m                        = "resgroup-136552" [33m->[0m [0m"resgroup-44522"
        [1m[0mtags[0m[0m                                    = [
            "urn:vmomi:InventoryServiceTag:7d472c8b-9b2c-49e1-95d1-7b383aca8067:GLOBAL",
            "urn:vmomi:InventoryServiceTag:83a73fc7-224a-461a-8083-66c5a8d43656:GLOBAL",
            "urn:vmomi:InventoryServiceTag:a00d9809-5c0c-436a-89f5-4aeb2594df19:GLOBAL",
            "urn:vmomi:InventoryServiceTag:dab38fe6-d558-463a-9e4e-77672ee9c014:GLOBAL",
        ]
        [90m# (66 unchanged attributes hidden)[0m[0m

        [90m# (4 unchanged blocks hidden)[0m[0m
    }

[1m  # vsphere_virtual_machine.vm["u8-o2x-gpu030"][0m will be updated in-place[0m[0m
[0m  [33m~[0m[0m resource "vsphere_virtual_machine" "vm" {
      [33m~[0m [0m[1m[0mdatastore_id[0m[0m                            = "datastore-136553" [33m->[0m [0m"datastore-44551"
      [33m~[0m [0m[1m[0mhost_system_id[0m[0m                          = "host-70611" [33m->[0m [0m(known after apply)
        [1m[0mid[0m[0m                                      = "420a7f24-741e-67cb-fe3d-fe22edd03223"
      [31m-[0m [0m[1m[0mmemory_reservation[0m[0m                      = 16384 [90m->[0m [0m[90mnull[0m[0m
        [1m[0mname[0m[0m                                    = "u8-o2x-gpu030"
      [33m~[0m [0m[1m[0mresource_pool_id[0m[0m                        = "resgroup-136552" [33m->[0m [0m"resgroup-44522"
        [1m[0mtags[0m[0m                                    = [
            "urn:vmomi:InventoryServiceTag:7d472c8b-9b2c-49e1-95d1-7b383aca8067:GLOBAL",
            "urn:vmomi:InventoryServiceTag:83a73fc7-224a-461a-8083-66c5a8d43656:GLOBAL",
            "urn:vmomi:InventoryServiceTag:a00d9809-5c0c-436a-89f5-4aeb2594df19:GLOBAL",
            "urn:vmomi:InventoryServiceTag:dab38fe6-d558-463a-9e4e-77672ee9c014:GLOBAL",
        ]
        [90m# (66 unchanged attributes hidden)[0m[0m

        [90m# (4 unchanged blocks hidden)[0m[0m
    }

[1m  # vsphere_virtual_machine.vm["u8-o2x-gpu031"][0m will be updated in-place[0m[0m
[0m  [33m~[0m[0m resource "vsphere_virtual_machine" "vm" {
      [33m~[0m [0m[1m[0mdatastore_id[0m[0m                            = "datastore-136553" [33m->[0m [0m"datastore-44551"
      [33m~[0m [0m[1m[0mhost_system_id[0m[0m                          = "host-84666" [33m->[0m [0m(known after apply)
        [1m[0mid[0m[0m                                      = "420a6843-157f-472e-0dcd-72ef9252e492"
      [31m-[0m [0m[1m[0mmemory_reservation[0m[0m                      = 16384 [90m->[0m [0m[90mnull[0m[0m
        [1m[0mname[0m[0m                                    = "u8-o2x-gpu031"
      [33m~[0m [0m[1m[0mresource_pool_id[0m[0m                        = "resgroup-136552" [33m->[0m [0m"resgroup-44522"
        [1m[0mtags[0m[0m                                    = [
            "urn:vmomi:InventoryServiceTag:7d472c8b-9b2c-49e1-95d1-7b383aca8067:GLOBAL",
            "urn:vmomi:InventoryServiceTag:83a73fc7-224a-461a-8083-66c5a8d43656:GLOBAL",
            "urn:vmomi:InventoryServiceTag:a00d9809-5c0c-436a-89f5-4aeb2594df19:GLOBAL",
            "urn:vmomi:InventoryServiceTag:dab38fe6-d558-463a-9e4e-77672ee9c014:GLOBAL",
        ]
        [90m# (66 unchanged attributes hidden)[0m[0m

        [90m# (4 unchanged blocks hidden)[0m[0m
    }

[1m  # vsphere_virtual_machine.vm["u8-o2x-gpu032"][0m will be updated in-place[0m[0m
[0m  [33m~[0m[0m resource "vsphere_virtual_machine" "vm" {
      [33m~[0m [0m[1m[0mdatastore_id[0m[0m                            = "datastore-136553" [33m->[0m [0m"datastore-44551"
      [33m~[0m [0m[1m[0mhost_system_id[0m[0m                          = "host-84666" [33m->[0m [0m(known after apply)
        [1m[0mid[0m[0m                                      = "420ab7f7-7a98-5530-1bbc-07e6e2fe711a"
      [31m-[0m [0m[1m[0mmemory_reservation[0m[0m                      = 16384 [90m->[0m [0m[90mnull[0m[0m
        [1m[0mname[0m[0m                                    = "u8-o2x-gpu032"
      [33m~[0m [0m[1m[0mresource_pool_id[0m[0m                        = "resgroup-136552" [33m->[0m [0m"resgroup-44522"
        [1m[0mtags[0m[0m                                    = [
            "urn:vmomi:InventoryServiceTag:7d472c8b-9b2c-49e1-95d1-7b383aca8067:GLOBAL",
            "urn:vmomi:InventoryServiceTag:83a73fc7-224a-461a-8083-66c5a8d43656:GLOBAL",
            "urn:vmomi:InventoryServiceTag:a00d9809-5c0c-436a-89f5-4aeb2594df19:GLOBAL",
            "urn:vmomi:InventoryServiceTag:dab38fe6-d558-463a-9e4e-77672ee9c014:GLOBAL",
        ]
        [90m# (66 unchanged attributes hidden)[0m[0m

        [90m# (4 unchanged blocks hidden)[0m[0m
    }

[1m  # vsphere_virtual_machine.vm["u8-o2x-gpu033"][0m will be updated in-place[0m[0m
[0m  [33m~[0m[0m resource "vsphere_virtual_machine" "vm" {
      [33m~[0m [0m[1m[0mdatastore_id[0m[0m                            = "datastore-136553" [33m->[0m [0m"datastore-44551"
      [33m~[0m [0m[1m[0mhost_system_id[0m[0m                          = "host-70611" [33m->[0m [0m(known after apply)
        [1m[0mid[0m[0m                                      = "420ab239-360b-002f-f849-ba2af30c0c31"
      [31m-[0m [0m[1m[0mmemory_reservation[0m[0m                      = 16384 [90m->[0m [0m[90mnull[0m[0m
        [1m[0mname[0m[0m                                    = "u8-o2x-gpu033"
      [33m~[0m [0m[1m[0mresource_pool_id[0m[0m                        = "resgroup-136552" [33m->[0m [0m"resgroup-44522"
        [1m[0mtags[0m[0m                                    = [
            "urn:vmomi:InventoryServiceTag:7d472c8b-9b2c-49e1-95d1-7b383aca8067:GLOBAL",
            "urn:vmomi:InventoryServiceTag:83a73fc7-224a-461a-8083-66c5a8d43656:GLOBAL",
            "urn:vmomi:InventoryServiceTag:a00d9809-5c0c-436a-89f5-4aeb2594df19:GLOBAL",
            "urn:vmomi:InventoryServiceTag:dab38fe6-d558-463a-9e4e-77672ee9c014:GLOBAL",
        ]
        [90m# (66 unchanged attributes hidden)[0m[0m

        [90m# (4 unchanged blocks hidden)[0m[0m
    }

[1m  # vsphere_virtual_machine.vm["u8-o2x-gpu034"][0m will be updated in-place[0m[0m
[0m  [33m~[0m[0m resource "vsphere_virtual_machine" "vm" {
      [33m~[0m [0m[1m[0mdatastore_id[0m[0m                            = "datastore-136553" [33m->[0m [0m"datastore-44551"
      [33m~[0m [0m[1m[0mhost_system_id[0m[0m                          = "host-84666" [33m->[0m [0m(known after apply)
        [1m[0mid[0m[0m                                      = "420a51a7-a883-e905-85e6-2c3f9b1adac7"
      [31m-[0m [0m[1m[0mmemory_reservation[0m[0m                      = 16384 [90m->[0m [0m[90mnull[0m[0m
        [1m[0mname[0m[0m                                    = "u8-o2x-gpu034"
      [33m~[0m [0m[1m[0mresource_pool_id[0m[0m                        = "resgroup-136552" [33m->[0m [0m"resgroup-44522"
        [1m[0mtags[0m[0m                                    = [
            "urn:vmomi:InventoryServiceTag:7d472c8b-9b2c-49e1-95d1-7b383aca8067:GLOBAL",
            "urn:vmomi:InventoryServiceTag:83a73fc7-224a-461a-8083-66c5a8d43656:GLOBAL",
            "urn:vmomi:InventoryServiceTag:a00d9809-5c0c-436a-89f5-4aeb2594df19:GLOBAL",
            "urn:vmomi:InventoryServiceTag:dab38fe6-d558-463a-9e4e-77672ee9c014:GLOBAL",
        ]
        [90m# (66 unchanged attributes hidden)[0m[0m

        [90m# (4 unchanged blocks hidden)[0m[0m
    }

[1m  # vsphere_virtual_machine.vm["u8-o2x-gpu035"][0m will be updated in-place[0m[0m
[0m  [33m~[0m[0m resource "vsphere_virtual_machine" "vm" {
      [33m~[0m [0m[1m[0mdatastore_id[0m[0m                            = "datastore-136553" [33m->[0m [0m"datastore-44551"
      [33m~[0m [0m[1m[0mhost_system_id[0m[0m                          = "host-84666" [33m->[0m [0m(known after apply)
        [1m[0mid[0m[0m                                      = "420a3d5c-9801-7c31-eabd-b4c20d9b98fa"
      [31m-[0m [0m[1m[0mmemory_reservation[0m[0m                      = 16384 [90m->[0m [0m[90mnull[0m[0m
        [1m[0mname[0m[0m                                    = "u8-o2x-gpu035"
      [33m~[0m [0m[1m[0mresource_pool_id[0m[0m                        = "resgroup-136552" [33m->[0m [0m"resgroup-44522"
        [1m[0mtags[0m[0m                                    = [
            "urn:vmomi:InventoryServiceTag:7d472c8b-9b2c-49e1-95d1-7b383aca8067:GLOBAL",
            "urn:vmomi:InventoryServiceTag:83a73fc7-224a-461a-8083-66c5a8d43656:GLOBAL",
            "urn:vmomi:InventoryServiceTag:a00d9809-5c0c-436a-89f5-4aeb2594df19:GLOBAL",
            "urn:vmomi:InventoryServiceTag:dab38fe6-d558-463a-9e4e-77672ee9c014:GLOBAL",
        ]
        [90m# (66 unchanged attributes hidden)[0m[0m

        [90m# (4 unchanged blocks hidden)[0m[0m
    }

[1m  # vsphere_virtual_machine.vm["u8-o2x-gpu036"][0m will be updated in-place[0m[0m
[0m  [33m~[0m[0m resource "vsphere_virtual_machine" "vm" {
      [33m~[0m [0m[1m[0mdatastore_id[0m[0m                            = "datastore-136553" [33m->[0m [0m"datastore-44551"
      [33m~[0m [0m[1m[0mhost_system_id[0m[0m                          = "host-70611" [33m->[0m [0m(known after apply)
        [1m[0mid[0m[0m                                      = "420a044a-35e1-9dc5-fec7-af929c16ae8e"
      [31m-[0m [0m[1m[0mmemory_reservation[0m[0m                      = 16384 [90m->[0m [0m[90mnull[0m[0m
        [1m[0mname[0m[0m                                    = "u8-o2x-gpu036"
      [33m~[0m [0m[1m[0mresource_pool_id[0m[0m                        = "resgroup-136552" [33m->[0m [0m"resgroup-44522"
        [1m[0mtags[0m[0m                                    = [
            "urn:vmomi:InventoryServiceTag:7d472c8b-9b2c-49e1-95d1-7b383aca8067:GLOBAL",
            "urn:vmomi:InventoryServiceTag:83a73fc7-224a-461a-8083-66c5a8d43656:GLOBAL",
            "urn:vmomi:InventoryServiceTag:a00d9809-5c0c-436a-89f5-4aeb2594df19:GLOBAL",
            "urn:vmomi:InventoryServiceTag:dab38fe6-d558-463a-9e4e-77672ee9c014:GLOBAL",
        ]
        [90m# (66 unchanged attributes hidden)[0m[0m

        [90m# (4 unchanged blocks hidden)[0m[0m
    }

[1m  # vsphere_virtual_machine.vm["u8-o2x-run019"][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "vsphere_virtual_machine" "vm" {
      [32m+[0m [0m[1m[0mannotation[0m[0m                              = (known after apply)
      [32m+[0m [0m[1m[0mboot_retry_delay[0m[0m                        = 10000
      [32m+[0m [0m[1m[0mchange_version[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mcpu_limit[0m[0m                               = -1
      [32m+[0m [0m[1m[0mcpu_share_count[0m[0m                         = (known after apply)
      [32m+[0m [0m[1m[0mcpu_share_level[0m[0m                         = "normal"
      [32m+[0m [0m[1m[0mdatastore_id[0m[0m                            = "datastore-44551"
      [32m+[0m [0m[1m[0mdefault_ip_address[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mept_rvi_mode[0m[0m                            = "automatic"
      [32m+[0m [0m[1m[0mextra_config_reboot_required[0m[0m            = true
      [32m+[0m [0m[1m[0mfirmware[0m[0m                                = "bios"
      [32m+[0m [0m[1m[0mfolder[0m[0m                                  = "IAC"
      [32m+[0m [0m[1m[0mforce_power_off[0m[0m                         = true
      [32m+[0m [0m[1m[0mguest_id[0m[0m                                = "rhel8_64Guest"
      [32m+[0m [0m[1m[0mguest_ip_addresses[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mhardware_version[0m[0m                        = (known after apply)
      [32m+[0m [0m[1m[0mhost_system_id[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mhv_mode[0m[0m                                 = "hvAuto"
      [32m+[0m [0m[1m[0mid[0m[0m                                      = (known after apply)
      [32m+[0m [0m[1m[0mide_controller_count[0m[0m                    = 2
      [32m+[0m [0m[1m[0mimported[0m[0m                                = (known after apply)
      [32m+[0m [0m[1m[0mlatency_sensitivity[0m[0m                     = "normal"
      [32m+[0m [0m[1m[0mmemory[0m[0m                                  = 16384
      [32m+[0m [0m[1m[0mmemory_limit[0m[0m                            = -1
      [32m+[0m [0m[1m[0mmemory_share_count[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mmemory_share_level[0m[0m                      = "normal"
      [32m+[0m [0m[1m[0mmigrate_wait_timeout[0m[0m                    = 30
      [32m+[0m [0m[1m[0mmoid[0m[0m                                    = (known after apply)
      [32m+[0m [0m[1m[0mname[0m[0m                                    = "u8-o2x-run019"
      [32m+[0m [0m[1m[0mnum_cores_per_socket[0m[0m                    = 1
      [32m+[0m [0m[1m[0mnum_cpus[0m[0m                                = 8
      [32m+[0m [0m[1m[0mpower_state[0m[0m                             = (known after apply)
      [32m+[0m [0m[1m[0mpoweron_timeout[0m[0m                         = 300
      [32m+[0m [0m[1m[0mreboot_required[0m[0m                         = (known after apply)
      [32m+[0m [0m[1m[0mresource_pool_id[0m[0m                        = "resgroup-44522"
      [32m+[0m [0m[1m[0mrun_tools_scripts_after_power_on[0m[0m        = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_after_resume[0m[0m          = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_before_guest_shutdown[0m[0m = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_before_guest_standby[0m[0m  = true
      [32m+[0m [0m[1m[0msata_controller_count[0m[0m                   = 0
      [32m+[0m [0m[1m[0mscsi_bus_sharing[0m[0m                        = "noSharing"
      [32m+[0m [0m[1m[0mscsi_controller_count[0m[0m                   = 1
      [32m+[0m [0m[1m[0mscsi_type[0m[0m                               = "pvscsi"
      [32m+[0m [0m[1m[0mshutdown_wait_timeout[0m[0m                   = 3
      [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m                       = (known after apply)
      [32m+[0m [0m[1m[0mswap_placement_policy[0m[0m                   = "inherit"
      [32m+[0m [0m[1m[0mtags[0m[0m                                    = [
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:7d472c8b-9b2c-49e1-95d1-7b383aca8067:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:a00d9809-5c0c-436a-89f5-4aeb2594df19:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:d32d016a-d616-44a1-b098-31865e9ec0c2:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:dab38fe6-d558-463a-9e4e-77672ee9c014:GLOBAL",
        ]
      [32m+[0m [0m[1m[0mtools_upgrade_policy[0m[0m                    = "manual"
      [32m+[0m [0m[1m[0muuid[0m[0m                                    = (known after apply)
      [32m+[0m [0m[1m[0mvapp_transport[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mvmware_tools_status[0m[0m                     = (known after apply)
      [32m+[0m [0m[1m[0mvmx_path[0m[0m                                = (known after apply)
      [32m+[0m [0m[1m[0mwait_for_guest_ip_timeout[0m[0m               = 0
      [32m+[0m [0m[1m[0mwait_for_guest_net_routable[0m[0m             = true
      [32m+[0m [0m[1m[0mwait_for_guest_net_timeout[0m[0m              = 5

      [32m+[0m [0mclone {
          [32m+[0m [0m[1m[0mtemplate_uuid[0m[0m = "420aeedd-9fca-2936-fbcb-b49ec2e89171"
          [32m+[0m [0m[1m[0mtimeout[0m[0m       = 30

          [32m+[0m [0mcustomize {
              [32m+[0m [0m[1m[0mtimeout[0m[0m = 10

              [32m+[0m [0mlinux_options {
                  [32m+[0m [0m[1m[0mdomain[0m[0m       = "hcl.lmco.com"
                  [32m+[0m [0m[1m[0mhost_name[0m[0m    = "u8-o2x-run019"
                  [32m+[0m [0m[1m[0mhw_clock_utc[0m[0m = true
                }

              [32m+[0m [0mnetwork_interface {}
            }
        }

      [32m+[0m [0mdisk {
          [32m+[0m [0m[1m[0mattach[0m[0m            = false
          [32m+[0m [0m[1m[0mcontroller_type[0m[0m   = "scsi"
          [32m+[0m [0m[1m[0mdatastore_id[0m[0m      = "<computed>"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m    = (known after apply)
          [32m+[0m [0m[1m[0mdisk_mode[0m[0m         = "persistent"
          [32m+[0m [0m[1m[0mdisk_sharing[0m[0m      = "sharingNone"
          [32m+[0m [0m[1m[0meagerly_scrub[0m[0m     = false
          [32m+[0m [0m[1m[0mio_limit[0m[0m          = -1
          [32m+[0m [0m[1m[0mio_reservation[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_count[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_level[0m[0m    = "normal"
          [32m+[0m [0m[1m[0mkeep_on_remove[0m[0m    = false
          [32m+[0m [0m[1m[0mkey[0m[0m               = 0
          [32m+[0m [0m[1m[0mlabel[0m[0m             = "os"
          [32m+[0m [0m[1m[0mpath[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0msize[0m[0m              = 254
          [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mthin_provisioned[0m[0m  = true
          [32m+[0m [0m[1m[0munit_number[0m[0m       = 0
          [32m+[0m [0m[1m[0muuid[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0mwrite_through[0m[0m     = false
        }
      [32m+[0m [0mdisk {
          [32m+[0m [0m[1m[0mattach[0m[0m            = false
          [32m+[0m [0m[1m[0mcontroller_type[0m[0m   = "scsi"
          [32m+[0m [0m[1m[0mdatastore_id[0m[0m      = "<computed>"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m    = (known after apply)
          [32m+[0m [0m[1m[0mdisk_mode[0m[0m         = "persistent"
          [32m+[0m [0m[1m[0mdisk_sharing[0m[0m      = "sharingNone"
          [32m+[0m [0m[1m[0meagerly_scrub[0m[0m     = false
          [32m+[0m [0m[1m[0mio_limit[0m[0m          = -1
          [32m+[0m [0m[1m[0mio_reservation[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_count[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_level[0m[0m    = "normal"
          [32m+[0m [0m[1m[0mkeep_on_remove[0m[0m    = false
          [32m+[0m [0m[1m[0mkey[0m[0m               = 0
          [32m+[0m [0m[1m[0mlabel[0m[0m             = "data"
          [32m+[0m [0m[1m[0mpath[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0msize[0m[0m              = 586
          [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mthin_provisioned[0m[0m  = true
          [32m+[0m [0m[1m[0munit_number[0m[0m       = 1
          [32m+[0m [0m[1m[0muuid[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0mwrite_through[0m[0m     = false
        }

      [32m+[0m [0mnetwork_interface {
          [32m+[0m [0m[1m[0madapter_type[0m[0m          = "vmxnet3"
          [32m+[0m [0m[1m[0mbandwidth_limit[0m[0m       = -1
          [32m+[0m [0m[1m[0mbandwidth_reservation[0m[0m = 0
          [32m+[0m [0m[1m[0mbandwidth_share_count[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mbandwidth_share_level[0m[0m = "normal"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m        = (known after apply)
          [32m+[0m [0m[1m[0mkey[0m[0m                   = (known after apply)
          [32m+[0m [0m[1m[0mmac_address[0m[0m           = (known after apply)
          [32m+[0m [0m[1m[0mnetwork_id[0m[0m            = "dvportgroup-44946"
        }
    }

[1m  # vsphere_virtual_machine.vm["u8-o2x-run020"][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "vsphere_virtual_machine" "vm" {
      [32m+[0m [0m[1m[0mannotation[0m[0m                              = (known after apply)
      [32m+[0m [0m[1m[0mboot_retry_delay[0m[0m                        = 10000
      [32m+[0m [0m[1m[0mchange_version[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mcpu_limit[0m[0m                               = -1
      [32m+[0m [0m[1m[0mcpu_share_count[0m[0m                         = (known after apply)
      [32m+[0m [0m[1m[0mcpu_share_level[0m[0m                         = "normal"
      [32m+[0m [0m[1m[0mdatastore_id[0m[0m                            = "datastore-44551"
      [32m+[0m [0m[1m[0mdefault_ip_address[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mept_rvi_mode[0m[0m                            = "automatic"
      [32m+[0m [0m[1m[0mextra_config_reboot_required[0m[0m            = true
      [32m+[0m [0m[1m[0mfirmware[0m[0m                                = "bios"
      [32m+[0m [0m[1m[0mfolder[0m[0m                                  = "IAC"
      [32m+[0m [0m[1m[0mforce_power_off[0m[0m                         = true
      [32m+[0m [0m[1m[0mguest_id[0m[0m                                = "rhel8_64Guest"
      [32m+[0m [0m[1m[0mguest_ip_addresses[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mhardware_version[0m[0m                        = (known after apply)
      [32m+[0m [0m[1m[0mhost_system_id[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mhv_mode[0m[0m                                 = "hvAuto"
      [32m+[0m [0m[1m[0mid[0m[0m                                      = (known after apply)
      [32m+[0m [0m[1m[0mide_controller_count[0m[0m                    = 2
      [32m+[0m [0m[1m[0mimported[0m[0m                                = (known after apply)
      [32m+[0m [0m[1m[0mlatency_sensitivity[0m[0m                     = "normal"
      [32m+[0m [0m[1m[0mmemory[0m[0m                                  = 16384
      [32m+[0m [0m[1m[0mmemory_limit[0m[0m                            = -1
      [32m+[0m [0m[1m[0mmemory_share_count[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mmemory_share_level[0m[0m                      = "normal"
      [32m+[0m [0m[1m[0mmigrate_wait_timeout[0m[0m                    = 30
      [32m+[0m [0m[1m[0mmoid[0m[0m                                    = (known after apply)
      [32m+[0m [0m[1m[0mname[0m[0m                                    = "u8-o2x-run020"
      [32m+[0m [0m[1m[0mnum_cores_per_socket[0m[0m                    = 1
      [32m+[0m [0m[1m[0mnum_cpus[0m[0m                                = 8
      [32m+[0m [0m[1m[0mpower_state[0m[0m                             = (known after apply)
      [32m+[0m [0m[1m[0mpoweron_timeout[0m[0m                         = 300
      [32m+[0m [0m[1m[0mreboot_required[0m[0m                         = (known after apply)
      [32m+[0m [0m[1m[0mresource_pool_id[0m[0m                        = "resgroup-44522"
      [32m+[0m [0m[1m[0mrun_tools_scripts_after_power_on[0m[0m        = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_after_resume[0m[0m          = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_before_guest_shutdown[0m[0m = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_before_guest_standby[0m[0m  = true
      [32m+[0m [0m[1m[0msata_controller_count[0m[0m                   = 0
      [32m+[0m [0m[1m[0mscsi_bus_sharing[0m[0m                        = "noSharing"
      [32m+[0m [0m[1m[0mscsi_controller_count[0m[0m                   = 1
      [32m+[0m [0m[1m[0mscsi_type[0m[0m                               = "pvscsi"
      [32m+[0m [0m[1m[0mshutdown_wait_timeout[0m[0m                   = 3
      [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m                       = (known after apply)
      [32m+[0m [0m[1m[0mswap_placement_policy[0m[0m                   = "inherit"
      [32m+[0m [0m[1m[0mtags[0m[0m                                    = [
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:7d472c8b-9b2c-49e1-95d1-7b383aca8067:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:a00d9809-5c0c-436a-89f5-4aeb2594df19:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:d32d016a-d616-44a1-b098-31865e9ec0c2:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:dab38fe6-d558-463a-9e4e-77672ee9c014:GLOBAL",
        ]
      [32m+[0m [0m[1m[0mtools_upgrade_policy[0m[0m                    = "manual"
      [32m+[0m [0m[1m[0muuid[0m[0m                                    = (known after apply)
      [32m+[0m [0m[1m[0mvapp_transport[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mvmware_tools_status[0m[0m                     = (known after apply)
      [32m+[0m [0m[1m[0mvmx_path[0m[0m                                = (known after apply)
      [32m+[0m [0m[1m[0mwait_for_guest_ip_timeout[0m[0m               = 0
      [32m+[0m [0m[1m[0mwait_for_guest_net_routable[0m[0m             = true
      [32m+[0m [0m[1m[0mwait_for_guest_net_timeout[0m[0m              = 5

      [32m+[0m [0mclone {
          [32m+[0m [0m[1m[0mtemplate_uuid[0m[0m = "420aeedd-9fca-2936-fbcb-b49ec2e89171"
          [32m+[0m [0m[1m[0mtimeout[0m[0m       = 30

          [32m+[0m [0mcustomize {
              [32m+[0m [0m[1m[0mtimeout[0m[0m = 10

              [32m+[0m [0mlinux_options {
                  [32m+[0m [0m[1m[0mdomain[0m[0m       = "hcl.lmco.com"
                  [32m+[0m [0m[1m[0mhost_name[0m[0m    = "u8-o2x-run020"
                  [32m+[0m [0m[1m[0mhw_clock_utc[0m[0m = true
                }

              [32m+[0m [0mnetwork_interface {}
            }
        }

      [32m+[0m [0mdisk {
          [32m+[0m [0m[1m[0mattach[0m[0m            = false
          [32m+[0m [0m[1m[0mcontroller_type[0m[0m   = "scsi"
          [32m+[0m [0m[1m[0mdatastore_id[0m[0m      = "<computed>"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m    = (known after apply)
          [32m+[0m [0m[1m[0mdisk_mode[0m[0m         = "persistent"
          [32m+[0m [0m[1m[0mdisk_sharing[0m[0m      = "sharingNone"
          [32m+[0m [0m[1m[0meagerly_scrub[0m[0m     = false
          [32m+[0m [0m[1m[0mio_limit[0m[0m          = -1
          [32m+[0m [0m[1m[0mio_reservation[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_count[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_level[0m[0m    = "normal"
          [32m+[0m [0m[1m[0mkeep_on_remove[0m[0m    = false
          [32m+[0m [0m[1m[0mkey[0m[0m               = 0
          [32m+[0m [0m[1m[0mlabel[0m[0m             = "os"
          [32m+[0m [0m[1m[0mpath[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0msize[0m[0m              = 254
          [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mthin_provisioned[0m[0m  = true
          [32m+[0m [0m[1m[0munit_number[0m[0m       = 0
          [32m+[0m [0m[1m[0muuid[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0mwrite_through[0m[0m     = false
        }
      [32m+[0m [0mdisk {
          [32m+[0m [0m[1m[0mattach[0m[0m            = false
          [32m+[0m [0m[1m[0mcontroller_type[0m[0m   = "scsi"
          [32m+[0m [0m[1m[0mdatastore_id[0m[0m      = "<computed>"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m    = (known after apply)
          [32m+[0m [0m[1m[0mdisk_mode[0m[0m         = "persistent"
          [32m+[0m [0m[1m[0mdisk_sharing[0m[0m      = "sharingNone"
          [32m+[0m [0m[1m[0meagerly_scrub[0m[0m     = false
          [32m+[0m [0m[1m[0mio_limit[0m[0m          = -1
          [32m+[0m [0m[1m[0mio_reservation[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_count[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_level[0m[0m    = "normal"
          [32m+[0m [0m[1m[0mkeep_on_remove[0m[0m    = false
          [32m+[0m [0m[1m[0mkey[0m[0m               = 0
          [32m+[0m [0m[1m[0mlabel[0m[0m             = "data"
          [32m+[0m [0m[1m[0mpath[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0msize[0m[0m              = 586
          [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mthin_provisioned[0m[0m  = true
          [32m+[0m [0m[1m[0munit_number[0m[0m       = 1
          [32m+[0m [0m[1m[0muuid[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0mwrite_through[0m[0m     = false
        }

      [32m+[0m [0mnetwork_interface {
          [32m+[0m [0m[1m[0madapter_type[0m[0m          = "vmxnet3"
          [32m+[0m [0m[1m[0mbandwidth_limit[0m[0m       = -1
          [32m+[0m [0m[1m[0mbandwidth_reservation[0m[0m = 0
          [32m+[0m [0m[1m[0mbandwidth_share_count[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mbandwidth_share_level[0m[0m = "normal"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m        = (known after apply)
          [32m+[0m [0m[1m[0mkey[0m[0m                   = (known after apply)
          [32m+[0m [0m[1m[0mmac_address[0m[0m           = (known after apply)
          [32m+[0m [0m[1m[0mnetwork_id[0m[0m            = "dvportgroup-44946"
        }
    }

[1m  # vsphere_virtual_machine.vm["u8-o2x-tst007"][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "vsphere_virtual_machine" "vm" {
      [32m+[0m [0m[1m[0mannotation[0m[0m                              = (known after apply)
      [32m+[0m [0m[1m[0mboot_retry_delay[0m[0m                        = 10000
      [32m+[0m [0m[1m[0mchange_version[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mcpu_limit[0m[0m                               = -1
      [32m+[0m [0m[1m[0mcpu_share_count[0m[0m                         = (known after apply)
      [32m+[0m [0m[1m[0mcpu_share_level[0m[0m                         = "normal"
      [32m+[0m [0m[1m[0mdatastore_id[0m[0m                            = "datastore-44551"
      [32m+[0m [0m[1m[0mdefault_ip_address[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mept_rvi_mode[0m[0m                            = "automatic"
      [32m+[0m [0m[1m[0mextra_config_reboot_required[0m[0m            = true
      [32m+[0m [0m[1m[0mfirmware[0m[0m                                = "bios"
      [32m+[0m [0m[1m[0mfolder[0m[0m                                  = "IAC"
      [32m+[0m [0m[1m[0mforce_power_off[0m[0m                         = true
      [32m+[0m [0m[1m[0mguest_id[0m[0m                                = "rhel8_64Guest"
      [32m+[0m [0m[1m[0mguest_ip_addresses[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mhardware_version[0m[0m                        = (known after apply)
      [32m+[0m [0m[1m[0mhost_system_id[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mhv_mode[0m[0m                                 = "hvAuto"
      [32m+[0m [0m[1m[0mid[0m[0m                                      = (known after apply)
      [32m+[0m [0m[1m[0mide_controller_count[0m[0m                    = 2
      [32m+[0m [0m[1m[0mimported[0m[0m                                = (known after apply)
      [32m+[0m [0m[1m[0mlatency_sensitivity[0m[0m                     = "normal"
      [32m+[0m [0m[1m[0mmemory[0m[0m                                  = 16384
      [32m+[0m [0m[1m[0mmemory_limit[0m[0m                            = -1
      [32m+[0m [0m[1m[0mmemory_share_count[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mmemory_share_level[0m[0m                      = "normal"
      [32m+[0m [0m[1m[0mmigrate_wait_timeout[0m[0m                    = 30
      [32m+[0m [0m[1m[0mmoid[0m[0m                                    = (known after apply)
      [32m+[0m [0m[1m[0mname[0m[0m                                    = "u8-o2x-tst007"
      [32m+[0m [0m[1m[0mnum_cores_per_socket[0m[0m                    = 1
      [32m+[0m [0m[1m[0mnum_cpus[0m[0m                                = 8
      [32m+[0m [0m[1m[0mpower_state[0m[0m                             = (known after apply)
      [32m+[0m [0m[1m[0mpoweron_timeout[0m[0m                         = 300
      [32m+[0m [0m[1m[0mreboot_required[0m[0m                         = (known after apply)
      [32m+[0m [0m[1m[0mresource_pool_id[0m[0m                        = "resgroup-44522"
      [32m+[0m [0m[1m[0mrun_tools_scripts_after_power_on[0m[0m        = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_after_resume[0m[0m          = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_before_guest_shutdown[0m[0m = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_before_guest_standby[0m[0m  = true
      [32m+[0m [0m[1m[0msata_controller_count[0m[0m                   = 0
      [32m+[0m [0m[1m[0mscsi_bus_sharing[0m[0m                        = "noSharing"
      [32m+[0m [0m[1m[0mscsi_controller_count[0m[0m                   = 1
      [32m+[0m [0m[1m[0mscsi_type[0m[0m                               = "pvscsi"
      [32m+[0m [0m[1m[0mshutdown_wait_timeout[0m[0m                   = 3
      [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m                       = (known after apply)
      [32m+[0m [0m[1m[0mswap_placement_policy[0m[0m                   = "inherit"
      [32m+[0m [0m[1m[0mtags[0m[0m                                    = [
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:7d472c8b-9b2c-49e1-95d1-7b383aca8067:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:83a73fc7-224a-461a-8083-66c5a8d43656:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:a00d9809-5c0c-436a-89f5-4aeb2594df19:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:dab38fe6-d558-463a-9e4e-77672ee9c014:GLOBAL",
        ]
      [32m+[0m [0m[1m[0mtools_upgrade_policy[0m[0m                    = "manual"
      [32m+[0m [0m[1m[0muuid[0m[0m                                    = (known after apply)
      [32m+[0m [0m[1m[0mvapp_transport[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mvmware_tools_status[0m[0m                     = (known after apply)
      [32m+[0m [0m[1m[0mvmx_path[0m[0m                                = (known after apply)
      [32m+[0m [0m[1m[0mwait_for_guest_ip_timeout[0m[0m               = 0
      [32m+[0m [0m[1m[0mwait_for_guest_net_routable[0m[0m             = true
      [32m+[0m [0m[1m[0mwait_for_guest_net_timeout[0m[0m              = 5

      [32m+[0m [0mclone {
          [32m+[0m [0m[1m[0mtemplate_uuid[0m[0m = "420aeedd-9fca-2936-fbcb-b49ec2e89171"
          [32m+[0m [0m[1m[0mtimeout[0m[0m       = 30

          [32m+[0m [0mcustomize {
              [32m+[0m [0m[1m[0mtimeout[0m[0m = 10

              [32m+[0m [0mlinux_options {
                  [32m+[0m [0m[1m[0mdomain[0m[0m       = "hcl.lmco.com"
                  [32m+[0m [0m[1m[0mhost_name[0m[0m    = "u8-o2x-tst007"
                  [32m+[0m [0m[1m[0mhw_clock_utc[0m[0m = true
                }

              [32m+[0m [0mnetwork_interface {}
            }
        }

      [32m+[0m [0mdisk {
          [32m+[0m [0m[1m[0mattach[0m[0m            = false
          [32m+[0m [0m[1m[0mcontroller_type[0m[0m   = "scsi"
          [32m+[0m [0m[1m[0mdatastore_id[0m[0m      = "<computed>"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m    = (known after apply)
          [32m+[0m [0m[1m[0mdisk_mode[0m[0m         = "persistent"
          [32m+[0m [0m[1m[0mdisk_sharing[0m[0m      = "sharingNone"
          [32m+[0m [0m[1m[0meagerly_scrub[0m[0m     = false
          [32m+[0m [0m[1m[0mio_limit[0m[0m          = -1
          [32m+[0m [0m[1m[0mio_reservation[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_count[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_level[0m[0m    = "normal"
          [32m+[0m [0m[1m[0mkeep_on_remove[0m[0m    = false
          [32m+[0m [0m[1m[0mkey[0m[0m               = 0
          [32m+[0m [0m[1m[0mlabel[0m[0m             = "os"
          [32m+[0m [0m[1m[0mpath[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0msize[0m[0m              = 254
          [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mthin_provisioned[0m[0m  = true
          [32m+[0m [0m[1m[0munit_number[0m[0m       = 0
          [32m+[0m [0m[1m[0muuid[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0mwrite_through[0m[0m     = false
        }
      [32m+[0m [0mdisk {
          [32m+[0m [0m[1m[0mattach[0m[0m            = false
          [32m+[0m [0m[1m[0mcontroller_type[0m[0m   = "scsi"
          [32m+[0m [0m[1m[0mdatastore_id[0m[0m      = "<computed>"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m    = (known after apply)
          [32m+[0m [0m[1m[0mdisk_mode[0m[0m         = "persistent"
          [32m+[0m [0m[1m[0mdisk_sharing[0m[0m      = "sharingNone"
          [32m+[0m [0m[1m[0meagerly_scrub[0m[0m     = false
          [32m+[0m [0m[1m[0mio_limit[0m[0m          = -1
          [32m+[0m [0m[1m[0mio_reservation[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_count[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_level[0m[0m    = "normal"
          [32m+[0m [0m[1m[0mkeep_on_remove[0m[0m    = false
          [32m+[0m [0m[1m[0mkey[0m[0m               = 0
          [32m+[0m [0m[1m[0mlabel[0m[0m             = "data"
          [32m+[0m [0m[1m[0mpath[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0msize[0m[0m              = 586
          [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mthin_provisioned[0m[0m  = true
          [32m+[0m [0m[1m[0munit_number[0m[0m       = 1
          [32m+[0m [0m[1m[0muuid[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0mwrite_through[0m[0m     = false
        }

      [32m+[0m [0mnetwork_interface {
          [32m+[0m [0m[1m[0madapter_type[0m[0m          = "vmxnet3"
          [32m+[0m [0m[1m[0mbandwidth_limit[0m[0m       = -1
          [32m+[0m [0m[1m[0mbandwidth_reservation[0m[0m = 0
          [32m+[0m [0m[1m[0mbandwidth_share_count[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mbandwidth_share_level[0m[0m = "normal"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m        = (known after apply)
          [32m+[0m [0m[1m[0mkey[0m[0m                   = (known after apply)
          [32m+[0m [0m[1m[0mmac_address[0m[0m           = (known after apply)
          [32m+[0m [0m[1m[0mnetwork_id[0m[0m            = "dvportgroup-44946"
        }
    }

[1m  # vsphere_virtual_machine.vm_multi["u8-o2x-dev502"][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "vsphere_virtual_machine" "vm_multi" {
      [32m+[0m [0m[1m[0mannotation[0m[0m                              = (known after apply)
      [32m+[0m [0m[1m[0mboot_retry_delay[0m[0m                        = 10000
      [32m+[0m [0m[1m[0mchange_version[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mcpu_limit[0m[0m                               = -1
      [32m+[0m [0m[1m[0mcpu_share_count[0m[0m                         = (known after apply)
      [32m+[0m [0m[1m[0mcpu_share_level[0m[0m                         = "normal"
      [32m+[0m [0m[1m[0mdatastore_id[0m[0m                            = "datastore-44551"
      [32m+[0m [0m[1m[0mdefault_ip_address[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mept_rvi_mode[0m[0m                            = "automatic"
      [32m+[0m [0m[1m[0mextra_config_reboot_required[0m[0m            = true
      [32m+[0m [0m[1m[0mfirmware[0m[0m                                = "bios"
      [32m+[0m [0m[1m[0mfolder[0m[0m                                  = "IAC"
      [32m+[0m [0m[1m[0mforce_power_off[0m[0m                         = true
      [32m+[0m [0m[1m[0mguest_id[0m[0m                                = "rhel8_64Guest"
      [32m+[0m [0m[1m[0mguest_ip_addresses[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mhardware_version[0m[0m                        = (known after apply)
      [32m+[0m [0m[1m[0mhost_system_id[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mhv_mode[0m[0m                                 = "hvAuto"
      [32m+[0m [0m[1m[0mid[0m[0m                                      = (known after apply)
      [32m+[0m [0m[1m[0mide_controller_count[0m[0m                    = 2
      [32m+[0m [0m[1m[0mimported[0m[0m                                = (known after apply)
      [32m+[0m [0m[1m[0mlatency_sensitivity[0m[0m                     = "normal"
      [32m+[0m [0m[1m[0mmemory[0m[0m                                  = 16384
      [32m+[0m [0m[1m[0mmemory_limit[0m[0m                            = -1
      [32m+[0m [0m[1m[0mmemory_share_count[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mmemory_share_level[0m[0m                      = "normal"
      [32m+[0m [0m[1m[0mmigrate_wait_timeout[0m[0m                    = 30
      [32m+[0m [0m[1m[0mmoid[0m[0m                                    = (known after apply)
      [32m+[0m [0m[1m[0mname[0m[0m                                    = "u8-o2x-dev502"
      [32m+[0m [0m[1m[0mnum_cores_per_socket[0m[0m                    = 1
      [32m+[0m [0m[1m[0mnum_cpus[0m[0m                                = 24
      [32m+[0m [0m[1m[0mpower_state[0m[0m                             = (known after apply)
      [32m+[0m [0m[1m[0mpoweron_timeout[0m[0m                         = 300
      [32m+[0m [0m[1m[0mreboot_required[0m[0m                         = (known after apply)
      [32m+[0m [0m[1m[0mresource_pool_id[0m[0m                        = "resgroup-44522"
      [32m+[0m [0m[1m[0mrun_tools_scripts_after_power_on[0m[0m        = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_after_resume[0m[0m          = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_before_guest_shutdown[0m[0m = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_before_guest_standby[0m[0m  = true
      [32m+[0m [0m[1m[0msata_controller_count[0m[0m                   = 0
      [32m+[0m [0m[1m[0mscsi_bus_sharing[0m[0m                        = "noSharing"
      [32m+[0m [0m[1m[0mscsi_controller_count[0m[0m                   = 1
      [32m+[0m [0m[1m[0mscsi_type[0m[0m                               = "pvscsi"
      [32m+[0m [0m[1m[0mshutdown_wait_timeout[0m[0m                   = 3
      [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m                       = (known after apply)
      [32m+[0m [0m[1m[0mswap_placement_policy[0m[0m                   = "inherit"
      [32m+[0m [0m[1m[0mtags[0m[0m                                    = [
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:7d472c8b-9b2c-49e1-95d1-7b383aca8067:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:a00d9809-5c0c-436a-89f5-4aeb2594df19:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:dab38fe6-d558-463a-9e4e-77672ee9c014:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:f21e0e80-72cd-4f36-8ebf-42d008362bef:GLOBAL",
        ]
      [32m+[0m [0m[1m[0mtools_upgrade_policy[0m[0m                    = "manual"
      [32m+[0m [0m[1m[0muuid[0m[0m                                    = (known after apply)
      [32m+[0m [0m[1m[0mvapp_transport[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mvmware_tools_status[0m[0m                     = (known after apply)
      [32m+[0m [0m[1m[0mvmx_path[0m[0m                                = (known after apply)
      [32m+[0m [0m[1m[0mwait_for_guest_ip_timeout[0m[0m               = 0
      [32m+[0m [0m[1m[0mwait_for_guest_net_routable[0m[0m             = true
      [32m+[0m [0m[1m[0mwait_for_guest_net_timeout[0m[0m              = 5

      [32m+[0m [0mclone {
          [32m+[0m [0m[1m[0mtemplate_uuid[0m[0m = "420a325e-0a48-6841-d493-4240dc2b9a3e"
          [32m+[0m [0m[1m[0mtimeout[0m[0m       = 30

          [32m+[0m [0mcustomize {
              [32m+[0m [0m[1m[0mtimeout[0m[0m = 10

              [32m+[0m [0mlinux_options {
                  [32m+[0m [0m[1m[0mdomain[0m[0m       = "hcl.lmco.com"
                  [32m+[0m [0m[1m[0mhost_name[0m[0m    = "u8-o2x-dev502"
                  [32m+[0m [0m[1m[0mhw_clock_utc[0m[0m = true
                }

              [32m+[0m [0mnetwork_interface {}
            }
        }

      [32m+[0m [0mdisk {
          [32m+[0m [0m[1m[0mattach[0m[0m            = false
          [32m+[0m [0m[1m[0mcontroller_type[0m[0m   = "scsi"
          [32m+[0m [0m[1m[0mdatastore_id[0m[0m      = "<computed>"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m    = (known after apply)
          [32m+[0m [0m[1m[0mdisk_mode[0m[0m         = "persistent"
          [32m+[0m [0m[1m[0mdisk_sharing[0m[0m      = "sharingNone"
          [32m+[0m [0m[1m[0meagerly_scrub[0m[0m     = false
          [32m+[0m [0m[1m[0mio_limit[0m[0m          = -1
          [32m+[0m [0m[1m[0mio_reservation[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_count[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_level[0m[0m    = "normal"
          [32m+[0m [0m[1m[0mkeep_on_remove[0m[0m    = false
          [32m+[0m [0m[1m[0mkey[0m[0m               = 0
          [32m+[0m [0m[1m[0mlabel[0m[0m             = "os"
          [32m+[0m [0m[1m[0mpath[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0msize[0m[0m              = 254
          [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mthin_provisioned[0m[0m  = true
          [32m+[0m [0m[1m[0munit_number[0m[0m       = 0
          [32m+[0m [0m[1m[0muuid[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0mwrite_through[0m[0m     = false
        }
      [32m+[0m [0mdisk {
          [32m+[0m [0m[1m[0mattach[0m[0m            = false
          [32m+[0m [0m[1m[0mcontroller_type[0m[0m   = "scsi"
          [32m+[0m [0m[1m[0mdatastore_id[0m[0m      = "<computed>"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m    = (known after apply)
          [32m+[0m [0m[1m[0mdisk_mode[0m[0m         = "persistent"
          [32m+[0m [0m[1m[0mdisk_sharing[0m[0m      = "sharingNone"
          [32m+[0m [0m[1m[0meagerly_scrub[0m[0m     = false
          [32m+[0m [0m[1m[0mio_limit[0m[0m          = -1
          [32m+[0m [0m[1m[0mio_reservation[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_count[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_level[0m[0m    = "normal"
          [32m+[0m [0m[1m[0mkeep_on_remove[0m[0m    = false
          [32m+[0m [0m[1m[0mkey[0m[0m               = 0
          [32m+[0m [0m[1m[0mlabel[0m[0m             = "data"
          [32m+[0m [0m[1m[0mpath[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0msize[0m[0m              = 586
          [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mthin_provisioned[0m[0m  = true
          [32m+[0m [0m[1m[0munit_number[0m[0m       = 1
          [32m+[0m [0m[1m[0muuid[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0mwrite_through[0m[0m     = false
        }

      [32m+[0m [0mnetwork_interface {
          [32m+[0m [0m[1m[0madapter_type[0m[0m          = "vmxnet3"
          [32m+[0m [0m[1m[0mbandwidth_limit[0m[0m       = -1
          [32m+[0m [0m[1m[0mbandwidth_reservation[0m[0m = 0
          [32m+[0m [0m[1m[0mbandwidth_share_count[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mbandwidth_share_level[0m[0m = "normal"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m        = (known after apply)
          [32m+[0m [0m[1m[0mkey[0m[0m                   = (known after apply)
          [32m+[0m [0m[1m[0mmac_address[0m[0m           = (known after apply)
          [32m+[0m [0m[1m[0mnetwork_id[0m[0m            = "dvportgroup-44946"
        }
    }

[1m  # vsphere_virtual_machine.vm_server_glr["u8-srv-glr017"][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "vsphere_virtual_machine" "vm_server_glr" {
      [32m+[0m [0m[1m[0mannotation[0m[0m                              = (known after apply)
      [32m+[0m [0m[1m[0mboot_retry_delay[0m[0m                        = 10000
      [32m+[0m [0m[1m[0mchange_version[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mcpu_limit[0m[0m                               = -1
      [32m+[0m [0m[1m[0mcpu_share_count[0m[0m                         = (known after apply)
      [32m+[0m [0m[1m[0mcpu_share_level[0m[0m                         = "normal"
      [32m+[0m [0m[1m[0mdatastore_id[0m[0m                            = "datastore-44551"
      [32m+[0m [0m[1m[0mdefault_ip_address[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mept_rvi_mode[0m[0m                            = "automatic"
      [32m+[0m [0m[1m[0mextra_config_reboot_required[0m[0m            = true
      [32m+[0m [0m[1m[0mfirmware[0m[0m                                = "bios"
      [32m+[0m [0m[1m[0mfolder[0m[0m                                  = "IAC"
      [32m+[0m [0m[1m[0mforce_power_off[0m[0m                         = true
      [32m+[0m [0m[1m[0mguest_id[0m[0m                                = "rhel8_64Guest"
      [32m+[0m [0m[1m[0mguest_ip_addresses[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mhardware_version[0m[0m                        = (known after apply)
      [32m+[0m [0m[1m[0mhost_system_id[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mhv_mode[0m[0m                                 = "hvAuto"
      [32m+[0m [0m[1m[0mid[0m[0m                                      = (known after apply)
      [32m+[0m [0m[1m[0mide_controller_count[0m[0m                    = 2
      [32m+[0m [0m[1m[0mimported[0m[0m                                = (known after apply)
      [32m+[0m [0m[1m[0mlatency_sensitivity[0m[0m                     = "normal"
      [32m+[0m [0m[1m[0mmemory[0m[0m                                  = 32768
      [32m+[0m [0m[1m[0mmemory_limit[0m[0m                            = -1
      [32m+[0m [0m[1m[0mmemory_share_count[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mmemory_share_level[0m[0m                      = "normal"
      [32m+[0m [0m[1m[0mmigrate_wait_timeout[0m[0m                    = 30
      [32m+[0m [0m[1m[0mmoid[0m[0m                                    = (known after apply)
      [32m+[0m [0m[1m[0mname[0m[0m                                    = "u8-srv-glr017"
      [32m+[0m [0m[1m[0mnum_cores_per_socket[0m[0m                    = 1
      [32m+[0m [0m[1m[0mnum_cpus[0m[0m                                = 8
      [32m+[0m [0m[1m[0mpower_state[0m[0m                             = (known after apply)
      [32m+[0m [0m[1m[0mpoweron_timeout[0m[0m                         = 300
      [32m+[0m [0m[1m[0mreboot_required[0m[0m                         = (known after apply)
      [32m+[0m [0m[1m[0mresource_pool_id[0m[0m                        = "resgroup-44522"
      [32m+[0m [0m[1m[0mrun_tools_scripts_after_power_on[0m[0m        = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_after_resume[0m[0m          = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_before_guest_shutdown[0m[0m = true
      [32m+[0m [0m[1m[0mrun_tools_scripts_before_guest_standby[0m[0m  = true
      [32m+[0m [0m[1m[0msata_controller_count[0m[0m                   = 0
      [32m+[0m [0m[1m[0mscsi_bus_sharing[0m[0m                        = "noSharing"
      [32m+[0m [0m[1m[0mscsi_controller_count[0m[0m                   = 1
      [32m+[0m [0m[1m[0mscsi_type[0m[0m                               = "pvscsi"
      [32m+[0m [0m[1m[0mshutdown_wait_timeout[0m[0m                   = 3
      [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m                       = (known after apply)
      [32m+[0m [0m[1m[0mswap_placement_policy[0m[0m                   = "inherit"
      [32m+[0m [0m[1m[0mtags[0m[0m                                    = [
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:13df34ae-91d3-411e-a401-64e3a16d0a6a:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:2714a7bb-92fe-4b19-8d50-5605f7ec6570:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:a00d9809-5c0c-436a-89f5-4aeb2594df19:GLOBAL",
          [32m+[0m [0m"urn:vmomi:InventoryServiceTag:dab38fe6-d558-463a-9e4e-77672ee9c014:GLOBAL",
        ]
      [32m+[0m [0m[1m[0mtools_upgrade_policy[0m[0m                    = "manual"
      [32m+[0m [0m[1m[0muuid[0m[0m                                    = (known after apply)
      [32m+[0m [0m[1m[0mvapp_transport[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mvmware_tools_status[0m[0m                     = (known after apply)
      [32m+[0m [0m[1m[0mvmx_path[0m[0m                                = (known after apply)
      [32m+[0m [0m[1m[0mwait_for_guest_ip_timeout[0m[0m               = 0
      [32m+[0m [0m[1m[0mwait_for_guest_net_routable[0m[0m             = true
      [32m+[0m [0m[1m[0mwait_for_guest_net_timeout[0m[0m              = 5

      [32m+[0m [0mclone {
          [32m+[0m [0m[1m[0mtemplate_uuid[0m[0m = "420a78e6-9495-5624-5ccc-f1d0877147d4"
          [32m+[0m [0m[1m[0mtimeout[0m[0m       = 30

          [32m+[0m [0mcustomize {
              [32m+[0m [0m[1m[0mtimeout[0m[0m = 10

              [32m+[0m [0mlinux_options {
                  [32m+[0m [0m[1m[0mdomain[0m[0m       = "hcl.lmco.com"
                  [32m+[0m [0m[1m[0mhost_name[0m[0m    = "u8-srv-glr017"
                  [32m+[0m [0m[1m[0mhw_clock_utc[0m[0m = true
                }

              [32m+[0m [0mnetwork_interface {}
            }
        }

      [32m+[0m [0mdisk {
          [32m+[0m [0m[1m[0mattach[0m[0m            = false
          [32m+[0m [0m[1m[0mcontroller_type[0m[0m   = "scsi"
          [32m+[0m [0m[1m[0mdatastore_id[0m[0m      = "<computed>"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m    = (known after apply)
          [32m+[0m [0m[1m[0mdisk_mode[0m[0m         = "persistent"
          [32m+[0m [0m[1m[0mdisk_sharing[0m[0m      = "sharingNone"
          [32m+[0m [0m[1m[0meagerly_scrub[0m[0m     = false
          [32m+[0m [0m[1m[0mio_limit[0m[0m          = -1
          [32m+[0m [0m[1m[0mio_reservation[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_count[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_level[0m[0m    = "normal"
          [32m+[0m [0m[1m[0mkeep_on_remove[0m[0m    = false
          [32m+[0m [0m[1m[0mkey[0m[0m               = 0
          [32m+[0m [0m[1m[0mlabel[0m[0m             = "os"
          [32m+[0m [0m[1m[0mpath[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0msize[0m[0m              = 430
          [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mthin_provisioned[0m[0m  = true
          [32m+[0m [0m[1m[0munit_number[0m[0m       = 0
          [32m+[0m [0m[1m[0muuid[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0mwrite_through[0m[0m     = false
        }
      [32m+[0m [0mdisk {
          [32m+[0m [0m[1m[0mattach[0m[0m            = false
          [32m+[0m [0m[1m[0mcontroller_type[0m[0m   = "scsi"
          [32m+[0m [0m[1m[0mdatastore_id[0m[0m      = "<computed>"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m    = (known after apply)
          [32m+[0m [0m[1m[0mdisk_mode[0m[0m         = "persistent"
          [32m+[0m [0m[1m[0mdisk_sharing[0m[0m      = "sharingNone"
          [32m+[0m [0m[1m[0meagerly_scrub[0m[0m     = false
          [32m+[0m [0m[1m[0mio_limit[0m[0m          = -1
          [32m+[0m [0m[1m[0mio_reservation[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_count[0m[0m    = 0
          [32m+[0m [0m[1m[0mio_share_level[0m[0m    = "normal"
          [32m+[0m [0m[1m[0mkeep_on_remove[0m[0m    = false
          [32m+[0m [0m[1m[0mkey[0m[0m               = 0
          [32m+[0m [0m[1m[0mlabel[0m[0m             = "data"
          [32m+[0m [0m[1m[0mpath[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0msize[0m[0m              = 743
          [32m+[0m [0m[1m[0mstorage_policy_id[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mthin_provisioned[0m[0m  = true
          [32m+[0m [0m[1m[0munit_number[0m[0m       = 1
          [32m+[0m [0m[1m[0muuid[0m[0m              = (known after apply)
          [32m+[0m [0m[1m[0mwrite_through[0m[0m     = false
        }

      [32m+[0m [0mnetwork_interface {
          [32m+[0m [0m[1m[0madapter_type[0m[0m          = "vmxnet3"
          [32m+[0m [0m[1m[0mbandwidth_limit[0m[0m       = -1
          [32m+[0m [0m[1m[0mbandwidth_reservation[0m[0m = 0
          [32m+[0m [0m[1m[0mbandwidth_share_count[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mbandwidth_share_level[0m[0m = "normal"
          [32m+[0m [0m[1m[0mdevice_address[0m[0m        = (known after apply)
          [32m+[0m [0m[1m[0mkey[0m[0m                   = (known after apply)
          [32m+[0m [0m[1m[0mmac_address[0m[0m           = (known after apply)
          [32m+[0m [0m[1m[0mnetwork_id[0m[0m            = "dvportgroup-29"
        }
    }

[0m[1mPlan:[0m 30 to add, 12 to change, 0 to destroy.
[0m[32;1m$ gitlab-terraform apply -auto-approve[0;m

[0m[1mInitializing the backend...[0m
[0m[32m
Successfully configured the backend "http"! Terraform will automatically
use this backend unless the backend configuration changes.[0m

[0m[1mInitializing provider plugins...[0m
- Reusing previous version of hashicorp/vsphere from the dependency lock file
- Using previously-installed hashicorp/vsphere v2.3.1

[0m[1m[32mTerraform has been successfully initialized![0m[32m[0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-gpu025"]: Modifying... [id=420a5f04-adf2-4ac9-1ead-e1352219b43b][0m[0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-gpu031"]: Modifying... [id=420a6843-157f-472e-0dcd-72ef9252e492][0m[0m
[0m[1mvsphere_virtual_machine.vm_multi["u8-o2x-dev502"]: Creating...[0m[0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev215"]: Creating...[0m[0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev147"]: Creating...[0m[0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev189"]: Creating...[0m[0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-run019"]: Creating...[0m[0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev176"]: Creating...[0m[0m
[0m[1mvsphere_virtual_machine.vm_server_glr["u8-srv-glr017"]: Creating...[0m[0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev144"]: Creating...[0m[0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev155"]: Creating...[0m[0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev180"]: Creating...[0m[0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev205"]: Creating...[0m[0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-run020"]: Creating...[0m[0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev194"]: Creating...[0m[0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev157"]: Creating...[0m[0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-gpu033"]: Modifying... [id=420ab239-360b-002f-f849-ba2af30c0c31][0m[0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-gpu026"]: Modifying... [id=420aeb0b-2cbf-9be1-123a-036e545ab89a][0m[0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev214"]: Creating...[0m[0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-gpu027"]: Modifying... [id=420a58f7-8111-dec8-d7be-8afdc6290053][0m[0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev186"]: Creating...[0m[0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev156"]: Creating...[0m[0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev131"]: Creating...[0m[0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev223"]: Creating...[0m[0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-tst007"]: Creating...[0m[0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-gpu035"]: Modifying... [id=420a3d5c-9801-7c31-eabd-b4c20d9b98fa][0m[0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-gpu029"]: Modifying... [id=420af31f-b08a-89d2-0017-dbe317cbedc6][0m[0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-gpu032"]: Modifying... [id=420ab7f7-7a98-5530-1bbc-07e6e2fe711a][0m[0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev188"]: Creating...[0m[0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev152"]: Creating...[0m[0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-gpu030"]: Modifying... [id=420a7f24-741e-67cb-fe3d-fe22edd03223][0m[0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev159"]: Creating...[0m[0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev146"]: Creating...[0m[0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev139"]: Creating...[0m[0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-gpu034"]: Modifying... [id=420a51a7-a883-e905-85e6-2c3f9b1adac7][0m[0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev173"]: Creating...[0m[0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev218"]: Creating...[0m[0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-gpu028"]: Modifying... [id=420ac566-a3eb-6471-6a3f-d053ced06af7][0m[0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-gpu036"]: Modifying... [id=420a044a-35e1-9dc5-fec7-af929c16ae8e][0m[0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-gpu022"]: Creating...[0m[0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev250"]: Creating...[0m[0m
[0m[1mvsphere_virtual_machine.vm["u8-o2x-dev222"]: Creating...[0m[0m
[31m╷[0m[0m
[31m│[0m [0m[1m[31mError: [0m[0m[1merror cloning virtual machine: The name 'u8-o2x-dev189' already exists.[0m
[31m│[0m [0m
[31m│[0m [0m[0m  with vsphere_virtual_machine.vm["u8-o2x-dev189"],
[31m│[0m [0m  on main.tf line 194, in resource "vsphere_virtual_machine" "vm":
[31m│[0m [0m 194: resource "vsphere_virtual_machine" "vm" [4m{[0m[0m
[31m│[0m [0m
[31m╵[0m[0m
[31m╷[0m[0m
[31m│[0m [0m[1m[31mError: [0m[0m[1merror cloning virtual machine: The name 'u8-o2x-tst007' already exists.[0m
[31m│[0m [0m
[31m│[0m [0m[0m  with vsphere_virtual_machine.vm["u8-o2x-tst007"],
[31m│[0m [0m  on main.tf line 194, in resource "vsphere_virtual_machine" "vm":
[31m│[0m [0m 194: resource "vsphere_virtual_machine" "vm" [4m{[0m[0m
[31m│[0m [0m
[31m╵[0m[0m
[31m╷[0m[0m
[31m│[0m [0m[1m[31mError: [0m[0m[1merror cloning virtual machine: The name 'u8-o2x-dev205' already exists.[0m
[31m│[0m [0m
[31m│[0m [0m[0m  with vsphere_virtual_machine.vm["u8-o2x-dev205"],
[31m│[0m [0m  on main.tf line 194, in resource "vsphere_virtual_machine" "vm":
[31m│[0m [0m 194: resource "vsphere_virtual_machine" "vm" [4m{[0m[0m
[31m│[0m [0m
[31m╵[0m[0m
[31m╷[0m[0m
[31m│[0m [0m[1m[31mError: [0m[0m[1merror cloning virtual machine: The name 'u8-o2x-dev218' already exists.[0m
[31m│[0m [0m
[31m│[0m [0m[0m  with vsphere_virtual_machine.vm["u8-o2x-dev218"],
[31m│[0m [0m  on main.tf line 194, in resource "vsphere_virtual_machine" "vm":
[31m│[0m [0m 194: resource "vsphere_virtual_machine" "vm" [4m{[0m[0m
[31m│[0m [0m
[31m╵[0m[0m
[31m╷[0m[0m
[31m│[0m [0m[1m[31mError: [0m[0m[1merror cloning virtual machine: The name 'u8-o2x-gpu022' already exists.[0m
[31m│[0m [0m
[31m│[0m [0m[0m  with vsphere_virtual_machine.vm["u8-o2x-gpu022"],
[31m│[0m [0m  on main.tf line 194, in resource "vsphere_virtual_machine" "vm":
[31m│[0m [0m 194: resource "vsphere_virtual_machine" "vm" [4m{[0m[0m
[31m│[0m [0m
[31m╵[0m[0m
[31m╷[0m[0m
[31m│[0m [0m[1m[31mError: [0m[0m[1merror cloning virtual machine: The name 'u8-o2x-dev157' already exists.[0m
[31m│[0m [0m
[31m│[0m [0m[0m  with vsphere_virtual_machine.vm["u8-o2x-dev157"],
[31m│[0m [0m  on main.tf line 194, in resource "vsphere_virtual_machine" "vm":
[31m│[0m [0m 194: resource "vsphere_virtual_machine" "vm" [4m{[0m[0m
[31m│[0m [0m
[31m╵[0m[0m
[31m╷[0m[0m
[31m│[0m [0m[1m[31mError: [0m[0m[1merror cloning virtual machine: The name 'u8-o2x-dev214' already exists.[0m
[31m│[0m [0m
[31m│[0m [0m[0m  with vsphere_virtual_machine.vm["u8-o2x-dev214"],
[31m│[0m [0m  on main.tf line 194, in resource "vsphere_virtual_machine" "vm":
[31m│[0m [0m 194: resource "vsphere_virtual_machine" "vm" [4m{[0m[0m
[31m│[0m [0m
[31m╵[0m[0m
[31m╷[0m[0m
[31m│[0m [0m[1m[31mError: [0m[0m[1merror cloning virtual machine: The name 'u8-o2x-dev186' already exists.[0m
[31m│[0m [0m
[31m│[0m [0m[0m  with vsphere_virtual_machine.vm["u8-o2x-dev186"],
[31m│[0m [0m  on main.tf line 194, in resource "vsphere_virtual_machine" "vm":
[31m│[0m [0m 194: resource "vsphere_virtual_machine" "vm" [4m{[0m[0m
[31m│[0m [0m
[31m╵[0m[0m
[31m╷[0m[0m
[31m│[0m [0m[1m[31mError: [0m[0m[1merror cloning virtual machine: The name 'u8-o2x-dev152' already exists.[0m
[31m│[0m [0m
[31m│[0m [0m[0m  with vsphere_virtual_machine.vm["u8-o2x-dev152"],
[31m│[0m [0m  on main.tf line 194, in resource "vsphere_virtual_machine" "vm":
[31m│[0m [0m 194: resource "vsphere_virtual_machine" "vm" [4m{[0m[0m
[31m│[0m [0m
[31m╵[0m[0m
[31m╷[0m[0m
[31m│[0m [0m[1m[31mError: [0m[0m[1mAn error occurred during host configuration.[0m
[31m│[0m [0m
[31m│[0m [0m[0m  with vsphere_virtual_machine.vm["u8-o2x-gpu028"],
[31m│[0m [0m  on main.tf line 194, in resource "vsphere_virtual_machine" "vm":
[31m│[0m [0m 194: resource "vsphere_virtual_machine" "vm" [4m{[0m[0m
[31m│[0m [0m
[31m╵[0m[0m
[31m╷[0m[0m
[31m│[0m [0m[1m[31mError: [0m[0m[1mAn error occurred during host configuration.[0m
[31m│[0m [0m
[31m│[0m [0m[0m  with vsphere_virtual_machine.vm["u8-o2x-gpu029"],
[31m│[0m [0m  on main.tf line 194, in resource "vsphere_virtual_machine" "vm":
[31m│[0m [0m 194: resource "vsphere_virtual_machine" "vm" [4m{[0m[0m
[31m│[0m [0m
[31m╵[0m[0m
[31m╷[0m[0m
[31m│[0m [0m[1m[31mError: [0m[0m[1mAn error occurred during host configuration.[0m
[31m│[0m [0m
[31m│[0m [0m[0m  with vsphere_virtual_machine.vm["u8-o2x-gpu025"],
[31m│[0m [0m  on main.tf line 194, in resource "vsphere_virtual_machine" "vm":
[31m│[0m [0m 194: resource "vsphere_virtual_machine" "vm" [4m{[0m[0m
[31m│[0m [0m
[31m╵[0m[0m
[31m╷[0m[0m
[31m│[0m [0m[1m[31mError: [0m[0m[1merror cloning virtual machine: The name 'u8-o2x-dev180' already exists.[0m
[31m│[0m [0m
[31m│[0m [0m[0m  with vsphere_virtual_machine.vm["u8-o2x-dev180"],
[31m│[0m [0m  on main.tf line 194, in resource "vsphere_virtual_machine" "vm":
[31m│[0m [0m 194: resource "vsphere_virtual_machine" "vm" [4m{[0m[0m
[31m│[0m [0m
[31m╵[0m[0m
[31m╷[0m[0m
[31m│[0m [0m[1m[31mError: [0m[0m[1merror cloning virtual machine: The name 'u8-o2x-dev144' already exists.[0m
[31m│[0m [0m
[31m│[0m [0m[0m  with vsphere_virtual_machine.vm["u8-o2x-dev144"],
[31m│[0m [0m  on main.tf line 194, in resource "vsphere_virtual_machine" "vm":
[31m│[0m [0m 194: resource "vsphere_virtual_machine" "vm" [4m{[0m[0m
[31m│[0m [0m
[31m╵[0m[0m
[31m╷[0m[0m
[31m│[0m [0m[1m[31mError: [0m[0m[1merror cloning virtual machine: The name 'u8-o2x-dev139' already exists.[0m
[31m│[0m [0m
[31m│[0m [0m[0m  with vsphere_virtual_machine.vm["u8-o2x-dev139"],
[31m│[0m [0m  on main.tf line 194, in resource "vsphere_virtual_machine" "vm":
[31m│[0m [0m 194: resource "vsphere_virtual_machine" "vm" [4m{[0m[0m
[31m│[0m [0m
[31m╵[0m[0m
[31m╷[0m[0m
[31m│[0m [0m[1m[31mError: [0m[0m[1merror cloning virtual machine: The name 'u8-o2x-dev155' already exists.[0m
[31m│[0m [0m
[31m│[0m [0m[0m  with vsphere_virtual_machine.vm["u8-o2x-dev155"],
[31m│[0m [0m  on main.tf line 194, in resource "vsphere_virtual_machine" "vm":
[31m│[0m [0m 194: resource "vsphere_virtual_machine" "vm" [4m{[0m[0m
[31m│[0m [0m
[31m╵[0m[0m
[31m╷[0m[0m
[31m│[0m [0m[1m[31mError: [0m[0m[1merror cloning virtual machine: The name 'u8-o2x-dev176' already exists.[0m
[31m│[0m [0m
[31m│[0m [0m[0m  with vsphere_virtual_machine.vm["u8-o2x-dev176"],
[31m│[0m [0m  on main.tf line 194, in resource "vsphere_virtual_machine" "vm":
[31m│[0m [0m 194: resource "vsphere_virtual_machine" "vm" [4m{[0m[0m
[31m│[0m [0m
[31m╵[0m[0m
[31m╷[0m[0m
[31m│[0m [0m[1m[31mError: [0m[0m[1merror cloning virtual machine: The name 'u8-o2x-run020' already exists.[0m
[31m│[0m [0m
[31m│[0m [0m[0m  with vsphere_virtual_machine.vm["u8-o2x-run020"],
[31m│[0m [0m  on main.tf line 194, in resource "vsphere_virtual_machine" "vm":
[31m│[0m [0m 194: resource "vsphere_virtual_machine" "vm" [4m{[0m[0m
[31m│[0m [0m
[31m╵[0m[0m
[31m╷[0m[0m
[31m│[0m [0m[1m[31mError: [0m[0m[1mAn error occurred during host configuration.[0m
[31m│[0m [0m
[31m│[0m [0m[0m  with vsphere_virtual_machine.vm["u8-o2x-gpu035"],
[31m│[0m [0m  on main.tf line 194, in resource "vsphere_virtual_machine" "vm":
[31m│[0m [0m 194: resource "vsphere_virtual_machine" "vm" [4m{[0m[0m
[31m│[0m [0m
[31m╵[0m[0m
[31m╷[0m[0m
[31m│[0m [0m[1m[31mError: [0m[0m[1mAn error occurred during host configuration.[0m
[31m│[0m [0m
[31m│[0m [0m[0m  with vsphere_virtual_machine.vm["u8-o2x-gpu033"],
[31m│[0m [0m  on main.tf line 194, in resource "vsphere_virtual_machine" "vm":
[31m│[0m [0m 194: resource "vsphere_virtual_machine" "vm" [4m{[0m[0m
[31m│[0m [0m
[31m╵[0m[0m
[31m╷[0m[0m
[31m│[0m [0m[1m[31mError: [0m[0m[1merror cloning virtual machine: The name 'u8-o2x-dev159' already exists.[0m
[31m│[0m [0m
[31m│[0m [0m[0m  with vsphere_virtual_machine.vm["u8-o2x-dev159"],
[31m│[0m [0m  on main.tf line 194, in resource "vsphere_virtual_machine" "vm":
[31m│[0m [0m 194: resource "vsphere_virtual_machine" "vm" [4m{[0m[0m
[31m│[0m [0m
[31m╵[0m[0m
[31m╷[0m[0m
[31m│[0m [0m[1m[31mError: [0m[0m[1merror cloning virtual machine: The name 'u8-o2x-run019' already exists.[0m
[31m│[0m [0m
[31m│[0m [0m[0m  with vsphere_virtual_machine.vm["u8-o2x-run019"],
[31m│[0m [0m  on main.tf line 194, in resource "vsphere_virtual_machine" "vm":
[31m│[0m [0m 194: resource "vsphere_virtual_machine" "vm" [4m{[0m[0m
[31m│[0m [0m
[31m╵[0m[0m
[31m╷[0m[0m
[31m│[0m [0m[1m[31mError: [0m[0m[1mAn error occurred during host configuration.[0m
[31m│[0m [0m
[31m│[0m [0m[0m  with vsphere_virtual_machine.vm["u8-o2x-gpu032"],
[31m│[0m [0m  on main.tf line 194, in resource "vsphere_virtual_machine" "vm":
[31m│[0m [0m 194: resource "vsphere_virtual_machine" "vm" [4m{[0m[0m
[31m│[0m [0m
[31m╵[0m[0m
[31m╷[0m[0m
[31m│[0m [0m[1m[31mError: [0m[0m[1merror cloning virtual machine: The name 'u8-o2x-dev173' already exists.[0m
[31m│[0m [0m
[31m│[0m [0m[0m  with vsphere_virtual_machine.vm["u8-o2x-dev173"],
[31m│[0m [0m  on main.tf line 194, in resource "vsphere_virtual_machine" "vm":
[31m│[0m [0m 194: resource "vsphere_virtual_machine" "vm" [4m{[0m[0m
[31m│[0m [0m
[31m╵[0m[0m
[31m╷[0m[0m
[31m│[0m [0m[1m[31mError: [0m[0m[1mAn error occurred during host configuration.[0m
[31m│[0m [0m
[31m│[0m [0m[0m  with vsphere_virtual_machine.vm["u8-o2x-gpu030"],
[31m│[0m [0m  on main.tf line 194, in resource "vsphere_virtual_machine" "vm":
[31m│[0m [0m 194: resource "vsphere_virtual_machine" "vm" [4m{[0m[0m
[31m│[0m [0m
[31m╵[0m[0m
[31m╷[0m[0m
[31m│[0m [0m[1m[31mError: [0m[0m[1merror cloning virtual machine: The name 'u8-o2x-dev194' already exists.[0m
[31m│[0m [0m
[31m│[0m [0m[0m  with vsphere_virtual_machine.vm["u8-o2x-dev194"],
[31m│[0m [0m  on main.tf line 194, in resource "vsphere_virtual_machine" "vm":
[31m│[0m [0m 194: resource "vsphere_virtual_machine" "vm" [4m{[0m[0m
[31m│[0m [0m
[31m╵[0m[0m
[31m╷[0m[0m
[31m│[0m [0m[1m[31mError: [0m[0m[1merror cloning virtual machine: The name 'u8-o2x-dev188' already exists.[0m
[31m│[0m [0m
[31m│[0m [0m[0m  with vsphere_virtual_machine.vm["u8-o2x-dev188"],
[31m│[0m [0m  on main.tf line 194, in resource "vsphere_virtual_machine" "vm":
[31m│[0m [0m 194: resource "vsphere_virtual_machine" "vm" [4m{[0m[0m
[31m│[0m [0m
[31m╵[0m[0m
[31m╷[0m[0m
[31m│[0m [0m[1m[31mError: [0m[0m[1mAn error occurred during host configuration.[0m
[31m│[0m [0m
[31m│[0m [0m[0m  with vsphere_virtual_machine.vm["u8-o2x-gpu034"],
[31m│[0m [0m  on main.tf line 194, in resource "vsphere_virtual_machine" "vm":
[31m│[0m [0m 194: resource "vsphere_virtual_machine" "vm" [4m{[0m[0m
[31m│[0m [0m
[31m╵[0m[0m
[31m╷[0m[0m
[31m│[0m [0m[1m[31mError: [0m[0m[1merror cloning virtual machine: The name 'u8-o2x-dev250' already exists.[0m
[31m│[0m [0m
[31m│[0m [0m[0m  with vsphere_virtual_machine.vm["u8-o2x-dev250"],
[31m│[0m [0m  on main.tf line 194, in resource "vsphere_virtual_machine" "vm":
[31m│[0m [0m 194: resource "vsphere_virtual_machine" "vm" [4m{[0m[0m
[31m│[0m [0m
[31m╵[0m[0m
[31m╷[0m[0m
[31m│[0m [0m[1m[31mError: [0m[0m[1merror cloning virtual machine: The name 'u8-o2x-dev215' already exists.[0m
[31m│[0m [0m
[31m│[0m [0m[0m  with vsphere_virtual_machine.vm["u8-o2x-dev215"],
[31m│[0m [0m  on main.tf line 194, in resource "vsphere_virtual_machine" "vm":
[31m│[0m [0m 194: resource "vsphere_virtual_machine" "vm" [4m{[0m[0m
[31m│[0m [0m
[31m╵[0m[0m
[31m╷[0m[0m
[31m│[0m [0m[1m[31mError: [0m[0m[1merror cloning virtual machine: The name 'u8-o2x-dev147' already exists.[0m
[31m│[0m [0m
[31m│[0m [0m[0m  with vsphere_virtual_machine.vm["u8-o2x-dev147"],
[31m│[0m [0m  on main.tf line 194, in resource "vsphere_virtual_machine" "vm":
[31m│[0m [0m 194: resource "vsphere_virtual_machine" "vm" [4m{[0m[0m
[31m│[0m [0m
[31m╵[0m[0m
[31m╷[0m[0m
[31m│[0m [0m[1m[31mError: [0m[0m[1mAn error occurred during host configuration.[0m
[31m│[0m [0m
[31m│[0m [0m[0m  with vsphere_virtual_machine.vm["u8-o2x-gpu026"],
[31m│[0m [0m  on main.tf line 194, in resource "vsphere_virtual_machine" "vm":
[31m│[0m [0m 194: resource "vsphere_virtual_machine" "vm" [4m{[0m[0m
[31m│[0m [0m
[31m╵[0m[0m
[31m╷[0m[0m
[31m│[0m [0m[1m[31mError: [0m[0m[1mAn error occurred during host configuration.[0m
[31m│[0m [0m
[31m│[0m [0m[0m  with vsphere_virtual_machine.vm["u8-o2x-gpu027"],
[31m│[0m [0m  on main.tf line 194, in resource "vsphere_virtual_machine" "vm":
[31m│[0m [0m 194: resource "vsphere_virtual_machine" "vm" [4m{[0m[0m
[31m│[0m [0m
[31m╵[0m[0m
[31m╷[0m[0m
[31m│[0m [0m[1m[31mError: [0m[0m[1mAn error occurred during host configuration.[0m
[31m│[0m [0m
[31m│[0m [0m[0m  with vsphere_virtual_machine.vm["u8-o2x-gpu031"],
[31m│[0m [0m  on main.tf line 194, in resource "vsphere_virtual_machine" "vm":
[31m│[0m [0m 194: resource "vsphere_virtual_machine" "vm" [4m{[0m[0m
[31m│[0m [0m
[31m╵[0m[0m
[31m╷[0m[0m
[31m│[0m [0m[1m[31mError: [0m[0m[1merror cloning virtual machine: The name 'u8-o2x-dev223' already exists.[0m
[31m│[0m [0m
[31m│[0m [0m[0m  with vsphere_virtual_machine.vm["u8-o2x-dev223"],
[31m│[0m [0m  on main.tf line 194, in resource "vsphere_virtual_machine" "vm":
[31m│[0m [0m 194: resource "vsphere_virtual_machine" "vm" [4m{[0m[0m
[31m│[0m [0m
[31m╵[0m[0m
[31m╷[0m[0m
[31m│[0m [0m[1m[31mError: [0m[0m[1merror cloning virtual machine: The name 'u8-o2x-dev156' already exists.[0m
[31m│[0m [0m
[31m│[0m [0m[0m  with vsphere_virtual_machine.vm["u8-o2x-dev156"],
[31m│[0m [0m  on main.tf line 194, in resource "vsphere_virtual_machine" "vm":
[31m│[0m [0m 194: resource "vsphere_virtual_machine" "vm" [4m{[0m[0m
[31m│[0m [0m
[31m╵[0m[0m
[31m╷[0m[0m
[31m│[0m [0m[1m[31mError: [0m[0m[1merror cloning virtual machine: The name 'u8-o2x-dev222' already exists.[0m
[31m│[0m [0m
[31m│[0m [0m[0m  with vsphere_virtual_machine.vm["u8-o2x-dev222"],
[31m│[0m [0m  on main.tf line 194, in resource "vsphere_virtual_machine" "vm":
[31m│[0m [0m 194: resource "vsphere_virtual_machine" "vm" [4m{[0m[0m
[31m│[0m [0m
[31m╵[0m[0m
[31m╷[0m[0m
[31m│[0m [0m[1m[31mError: [0m[0m[1merror cloning virtual machine: The name 'u8-o2x-dev131' already exists.[0m
[31m│[0m [0m
[31m│[0m [0m[0m  with vsphere_virtual_machine.vm["u8-o2x-dev131"],
[31m│[0m [0m  on main.tf line 194, in resource "vsphere_virtual_machine" "vm":
[31m│[0m [0m 194: resource "vsphere_virtual_machine" "vm" [4m{[0m[0m
[31m│[0m [0m
[31m╵[0m[0m
[31m╷[0m[0m
[31m│[0m [0m[1m[31mError: [0m[0m[1merror cloning virtual machine: The name 'u8-o2x-dev146' already exists.[0m
[31m│[0m [0m
[31m│[0m [0m[0m  with vsphere_virtual_machine.vm["u8-o2x-dev146"],
[31m│[0m [0m  on main.tf line 194, in resource "vsphere_virtual_machine" "vm":
[31m│[0m [0m 194: resource "vsphere_virtual_machine" "vm" [4m{[0m[0m
[31m│[0m [0m
[31m╵[0m[0m
[31m╷[0m[0m
[31m│[0m [0m[1m[31mError: [0m[0m[1mAn error occurred during host configuration.[0m
[31m│[0m [0m
[31m│[0m [0m[0m  with vsphere_virtual_machine.vm["u8-o2x-gpu036"],
[31m│[0m [0m  on main.tf line 194, in resource "vsphere_virtual_machine" "vm":
[31m│[0m [0m 194: resource "vsphere_virtual_machine" "vm" [4m{[0m[0m
[31m│[0m [0m
[31m╵[0m[0m
[31m╷[0m[0m
[31m│[0m [0m[1m[31mError: [0m[0m[1merror cloning virtual machine: The name 'u8-o2x-dev502' already exists.[0m
[31m│[0m [0m
[31m│[0m [0m[0m  with vsphere_virtual_machine.vm_multi["u8-o2x-dev502"],
[31m│[0m [0m  on main.tf line 257, in resource "vsphere_virtual_machine" "vm_multi":
[31m│[0m [0m 257: resource "vsphere_virtual_machine" "vm_multi" [4m{[0m[0m
[31m│[0m [0m
[31m╵[0m[0m
[31m╷[0m[0m
[31m│[0m [0m[1m[31mError: [0m[0m[1merror cloning virtual machine: The name 'u8-srv-glr017' already exists.[0m
[31m│[0m [0m
[31m│[0m [0m[0m  with vsphere_virtual_machine.vm_server_glr["u8-srv-glr017"],
[31m│[0m [0m  on main.tf line 446, in resource "vsphere_virtual_machine" "vm_server_glr":
[31m│[0m [0m 446: resource "vsphere_virtual_machine" "vm_server_glr" [4m{[0m[0m
[31m│[0m [0m
[31m╵[0m[0m
section_end:1693322622:step_script
[0Ksection_start:1693322622:upload_artifacts_on_failure
[0K[0K[36;1mUploading artifacts for failed job[0;m[0;m
[32;1mUploading artifacts...[0;m
[0;33mWARNING: /builds/terraform/vm-baseline-as-code/production/plan.json: no matching files. Ensure that the artifact path is relative to the working directory[0;m 
[31;1mERROR: No files to upload                         [0;m 
section_end:1693322623:upload_artifacts_on_failure
[0Ksection_start:1693322623:cleanup_file_variables
[0K[0K[36;1mCleaning up project directory and file based variables[0;m[0;m
section_end:1693322624:cleanup_file_variables
[0K[31;1mERROR: Job failed: exit code 1
[0;m
