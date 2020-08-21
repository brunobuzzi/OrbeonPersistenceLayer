other
createLeaseXmlInfoForJohn

	^'<d:lockinfo xmlns:d="DAV:" xmlns:fr="http://orbeon.org/oxf/xml/form-runner">
    <d:lockscope><d:exclusive/></d:lockscope>
    <d:locktype><d:write/></d:locktype>
    <d:owner>
        <fr:username>john</fr:username>
        <fr:groupname>admin</fr:groupname>
    </d:owner>
</d:lockinfo>'