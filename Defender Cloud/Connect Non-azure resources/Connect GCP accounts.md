* **Set up GCP Security Command Center with Security Health Analytics:**
  For all the GCP projects in your organization, you must also:
  * Set up GCP Security Command Center using these instructions from the GCP documentation
  * Enable Security Health Analytics using these instructions from the GCP documentation
  * Verify that there's data flowing to the Security Command Center

* **Enable GCP Security Command Center API:**
  1) From Google's Cloud Console API Library, select the project you want to connect to Azure Security Center
  2) In the API Library, find and select *Security Command Center API*
  3) On the API's page, select ENABLE

* **Create a dedicated service account for the security configuration integration:**
  1) In the GCP Console, select the project you want to connect to Security Center
  2) In the Navigation menu, Under IAM & admin options, select *Service accounts*
  3) Select *CREATE SERVICE ACCOUNT*
  4) Enter an account name, and select *Create*
  5) Specify the Role as Security Center Admin Viewer, and select *Continue*
  6) The Grant users access to this service account section is optional. Select *Done*
  7) Copy the Email value of the created service account, and save it for later use
  8) In the Navigation menu, Under IAM & admin options, select *IAM*
  9) Switch to organization level
  10) Select *ADD*
  11) In the New members field, paste the Email value you copied earlier
  12) Specify the Role as *Security Center Admin Viewer* and then select *Save*

* **Create a private key for the dedicated service account:**
  Switch to project level
  1) In the Navigation menu, Under IAM & admin options, select *Service accounts*
  2) Open the dedicated service account and select *Edit*
  3) In the Keys section, select *ADD KEY* and then *Create new key*
  4) In the Create private key screen, select *JSON*, and then select *CREATE*
  5) Save this JSON file for later use

* **Connect GCP to Defender for Cloud:**
  1) From Defender for Cloud's menu, select *Cloud connectors*
  2) Select *add GCP account*
  3) On the onboarding page, do the following and then select Next
  4) Validate the chosen subscription
  5) In the Display name field, enter a display name for the connector
  6) In the Organization ID field, enter your organization's ID
  7) In the Private key file box, browse to the JSON file you downloaded in the previous step. Create a private key for the dedicated service account

* **Confirmation**
  When the connector is successfully created and GCP Security Command Center has been configured properly:
  * The GCP CIS standard will be shown in the Defender for Cloud's regulatory compliance dashboard.
  * Security recommendations for your GCP resources will appear in the Security Center portal and the regulatory compliance dashboard 5-10 minutes after onboard completes:
  ![image](https://github.com/AbhishekPratap9/SOC-Analysis/assets/156197198/e0b40496-c593-4b43-b461-7db6d85c0553)
