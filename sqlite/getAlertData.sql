SELECT DISTINCT CAPAlert.alertId, CAPAlert.updated_tstamp, CAPAlert.published_tstamp, 
       CAPAlert.title, CAPAlert.url, CAPAlert.summary, CAPAlert.event, 
       CAPAlert.effective_tstamp, CAPAlert.expiration_tstamp, 
       CAPAlert.download_tstamp, CAPAlert.status, CAPAlert.msgType,
	    CAPAlert.category, CAPAlert.urgency, CAPAlert.severity,
	    CAPAlert.certainty, CAPAlert.areaDesc, alertUGC.ugc
  FROM CAPAlert, alertUGC
 WHERE CAPAlert.alertId = alertUGC.alertId
   AND alertUGC.ugc = ? OR alertUGC.ugc = ?
   AND CAPAlert.effective_tstamp <= ? 
   AND CAPAlert.expiration_tstamp >= ?
 ORDER BY CAPAlert.published_tstamp ASC
