other
sendToClientCSV: fileNamed stream: aStream

	self requestContext respond: [:response | 
        response document: ((aStream contents asByteArray seasideMimeDocument) 
                                        mimeType: 'application/csv'; 
                                        fileName: fileNamed; 
                                        yourself)].