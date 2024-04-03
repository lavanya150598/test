{ 
    "iam_restrict_protocal_Forwarding_Creation_For" : [
                    "C03u3bdke"
                ],
    "iam_restrict_protocal_Forwarding_Creation_For": [
         {
                "condition" : {
                    "description": "Allow all users for tagged resources",
                    "expression": "resource.matchTag('637987714668/allUsersIngress', 'true')",
                    "title"      : "allowAllUsersIngress"
                },
                "values" :{
                    "allowed_values" : [],
                    "denied_values" : []   
                }
        }
    ]
}
