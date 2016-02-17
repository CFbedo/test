<cfcomponent>
	
	
	
	<cffunction name="getQry" >
		<cfargument name="name" type="string" required="false" >
		
		<cfstoredproc procedure="spTestTable" datasource="testdb" >
			<cfprocparam cfsqltype="cf_sql_vARCHAR" value="#arguments.name#">
			<cfprocresult name="qryResult" >
		</cfstoredproc>
		
		<cfreturn qryResult >
		
	</cffunction>
 
	
</cfcomponent>