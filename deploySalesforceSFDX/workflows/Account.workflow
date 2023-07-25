<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
   <rules>
      <fullName>Account Upgrade</fullName>
      <active>false</active>
      <criteriaItems>
         <field>Account.BillingCountry</field>
         <operation>equals</operation>
         <value>SPN</value>
      </criteriaItems>
      <triggerType>onCreateOrTriggeringUpdate</triggerType>
      <workflowTimeTriggers>
         <timeLength>30</timeLength>
         <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
      </workflowTimeTriggers>
   </rules>
   <tasks>
      <fullName>Account_Tri</fullName>
      <assignedTo>akash@dev58.zero</assignedTo>
      <assignedToType>user</assignedToType>
      <dueDateOffset>10</dueDateOffset>
      <notifyAssignee>false</notifyAssignee>
      <priority>Normal</priority>
      <protected>false</protected>
      <status>Not Started</status>
      <subject>Account Tri</subject>
   </tasks>
</Workflow>
