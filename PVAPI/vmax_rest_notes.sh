1. https://github.com/ganglia/gmond_python_modules/blob/master/vmax/vmax.py

https://community.emc.com/thread/187879?start=0&tstart=0
# Define some connection info
unimaxURI = 'https://<u4vIPaddress>:8443/univmax/restapi'
username = '<username>'
password = '<password>'
symmId = '<symID>'


2. http://scummins.com/unisphere-for-vmax-rest-api/ :::: Metrics ::::
https://<IPAddr>:8443/univmax/restapi/performance/FEDirector/metrics.
And the body becomes:
#############################
{
  "feDirectorParam":{
    "startDate" : "1385586600000",
    "endDate" : "1386192000000",
    "symmetrixId" : "000195700235",
    "directorId" : "FA-7E",
    "metrics" : ["IO_RATE"]
  }
}
##############################

3. https://pmkovar.fedorapeople.org/config-reference/ :::: Operations ::::
Supported operations¶

VMAX drivers support these operations:

    Create, list, delete, attach, and detach volumes
    Create, list, and delete volume snapshots
    Copy an image to a volume
    Copy a volume to an image
    Clone a volume
    Extend a volume
    Retype a volume (Host assisted volume migration only)
    Create a volume from a snapshot
    Create and delete consistency group
    Create and delete consistency group snapshot
    Modify consistency group (add/remove volumes)
    Create consistency group from source (source can only be a CG snapshot)

VMAX drivers also support the following features:

    Dynamic masking view creation
    Dynamic determination of the target iSCSI IP address
    iSCSI multipath support
    Oversubscription
    Live Migration

VMAX2:

    FAST automated storage tiering policy
    Striped volume creation

VMAX All Flash and Hybrid:

    Service Level support
    SnapVX support
    All Flash support

4. http://ireland.emc.com/collateral/TechnicalDocument/docu68854.pdf

5. https://community.emc.com/docs/DOC-56447 

REST API Documentation

https://community.emc.com/community/products/vmax


 :::: provisioning ::::
 
https://community.emc.com/people/PaulCork/blog/2017/02/01/unipshere-for-vmax-rest-api-examples--example-1-provisioning

 :::: snaps-back ::::

https://community.emc.com/people/PaulCork/blog/2017/02/02/unisphere-for-vmax-rest-api-examples--episode-2-the-vmax-snaps-back

:::: return-of-the-srdf ::::

https://community.emc.com/people/PaulCork/blog/2017/02/07/unisphere-for-vmax-rest-api-examples-episode-3-return-of-the-srdf

:::: Finding the Rogue One in your Environment, Gathering Performance Data via REST. ::::

https://community.emc.com/people/PaulCork/blog/2017/02/15/unisphere-for-vmax-rest-api-examples--episode-4-finding-the-rogue-one-in-your-environment-gathering-performance-data-via-rest

:::: Examples ::::

https://community.emc.com/people/PaulCork/blog/2016/08/12/time-for-a-rest
https://github.com/ciarams87/PyU4V/tree/master/examples

https://community.emc.com/docs/DOC-46344?attachmentName=RESTclient.zip&attachmentURL=/servlet/JiveServlet/download/46344-14-139360/RESTclient.zip

Available Rest calls include:

    LIST : This is a GET call that lists all items for a selected object e.g. https://UNIVMAX_IP:UNIVMAX_PORT/univmax/restapi/sloprovisioning/symmetrix/{symmetrixId}/storagegroup
    GET: This returns a single object e.g. https://UNIVMAX_IP:UNIVMAX_PORT/univmax/restapi/sloprovisioning/symmetrix/{symmetrixId}/storagegroup/{storageGroupId}
    POST(Create): This call is used to create an object e.g. https://UNIVMAX_IP:UNIVMAX_PORT/univmax/restapi/sloprovisioning/symmetrix/{symmetrixId}/storagegroup
    PUT(Edit): This call is used to edit an existing object e.g. https://UNIVMAX_IP:UNIVMAX_PORT/univmax/restapi/sloprovisioning/symmetrix/{symmetrixId}/storagegroup
    DELETE: this call is used to delete an object e.g. https://UNIVMAX_IP:UNIVMAX_PORT/univmax/restapi/sloprovisioning/symmetrix/{symmetrixId}/storagegroup


