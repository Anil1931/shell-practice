{
    "Groups": [],
    "Instances": [
        {
            "AmiLaunchIndex": 0,
            "ImageId": "ami-09c813fb71547fc4f",
            "InstanceId": "i-0e0af9620193db0da",
            "InstanceType": "t3.micro",
            "LaunchTime": "2025-09-26T20:14:30+00:00",
            "Monitoring": {
                "State": "disabled"
            },
            "Placement": {
                "AvailabilityZone": "us-east-1a",
                "GroupName": "",
                "Tenancy": "default"
            },
            "PrivateDnsName": "ip-172-31-21-247.ec2.internal",
            "PrivateIpAddress": "172.31.21.247",
            "ProductCodes": [],
            "PublicDnsName": "",
            "State": {
                "Code": 0,
                "Name": "pending"
            },
            "StateTransitionReason": "",
            "SubnetId": "subnet-0b2eeb26920867809",
            "VpcId": "vpc-0e2e7e95f19a21d02",
            "Architecture": "x86_64",
            "BlockDeviceMappings": [],
            "ClientToken": "d8974a4a-34f2-4568-b6c5-738252176558",
            "EbsOptimized": false,
            "EnaSupport": true,
            "Hypervisor": "xen",
            "NetworkInterfaces": [
                {
                    "Attachment": {
                        "AttachTime": "2025-09-26T20:14:30+00:00",
                        "AttachmentId": "eni-attach-021f4eb92d80764c6",
                        "DeleteOnTermination": true,
                        "DeviceIndex": 0,
                        "Status": "attaching",
                        "NetworkCardIndex": 0
                    },
                    "Description": "",
                    "Groups": [
                        {
                            "GroupName": "allow-all",
                            "GroupId": "sg-0261a8d4c3a51567e"
                        }
                    ],
                    "Ipv6Addresses": [],
                    "MacAddress": "0a:ff:e0:96:8b:73",
                    "NetworkInterfaceId": "eni-03471e915bb536c47",
                    "OwnerId": "868371209474",
                    "PrivateDnsName": "ip-172-31-21-247.ec2.internal",
                    "PrivateIpAddress": "172.31.21.247",
                    "PrivateIpAddresses": [
                        {
                            "Primary": true,
                            "PrivateDnsName": "ip-172-31-21-247.ec2.internal",
                            "PrivateIpAddress": "172.31.21.247"
                        }
                    ],
                    "SourceDestCheck": true,
                    "Status": "in-use",
                    "SubnetId": "subnet-0b2eeb26920867809",
                    "VpcId": "vpc-0e2e7e95f19a21d02",
                    "InterfaceType": "interface"
                }
            ],
            "RootDeviceName": "/dev/sda1",
            "RootDeviceType": "ebs",
            "SecurityGroups": [
                {
                    "GroupName": "allow-all",
                    "GroupId": "sg-0261a8d4c3a51567e"
                }
            ],
            "SourceDestCheck": true,
            "StateReason": {
                "Code": "pending",
                "Message": "pending"
            },
            "Tags": [
                {
                    "Key": "Name",
                    "Value": "Test"
                }
            ],
            "VirtualizationType": "hvm",
            "CpuOptions": {
                "CoreCount": 1,
                "ThreadsPerCore": 2
            },
            "CapacityReservationSpecification": {
                "CapacityReservationPreference": "open"
            },
            "MetadataOptions": {
                "State": "pending",
                "HttpTokens": "optional",
                "HttpPutResponseHopLimit": 1,
                "HttpEndpoint": "enabled",
                "HttpProtocolIpv6": "disabled",
                "InstanceMetadataTags": "disabled"
            },
            "EnclaveOptions": {
                "Enabled": false
            },
            "BootMode": "uefi-preferred",
            "PrivateDnsNameOptions": {
                "HostnameType": "ip-name",
                "EnableResourceNameDnsARecord": false,
                "EnableResourceNameDnsAAAARecord": false
            },
            "MaintenanceOptions": {
                "AutoRecovery": "default"
            },
            "CurrentInstanceBootMode": "uefi"
        }
    ],
    "OwnerId": "868371209474",
    "ReservationId": "r-03d5ac20dcf69372c"
}

