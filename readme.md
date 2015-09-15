# Project-Basil
A Decentralized Vulnerability Management

##Aim of the Project-Basil
To facilitate a decentralized Vulnerability feed management for IT vendors. Thereby creating a common platform for sharing information about vulnerabilities in a transparent manner.

##Problem addressed
The Cyber-security is a very complex problem as evolution of technology is mainly by intersection of technologies forming new technologies with different use cases, and any flaw in the basic technology create major havoc across multiple technology sets. Hence disbursement of the information pertaining to the bugs or security flaws becomes important in order to minimize the cost of impact for vulnerabilities.

In Current scenario the issue is handled by creating centralized repositories for mapping vulnerabilities identified in products of vendors. E.g. List like NVD maintained by NIST or Vulnerability database managed by various CERT's or other private Vulnerability feed providers.

##Why decentralize
Following are the reasons to decentralize the vulnerability feed management.
  - Cost Reduction
  - Universal and uniform access of data.

##Target Audience
 - IT Companies
 - CERT's
 - Information Security verticals of Organization ( Govt / Pvt Co's )

## Tools of trade  
 To decentralization of the vulnerability feed management is done via using a contracts in [Ethereum] (https://www.ethereum.org/) Blockchain and a feed mentioning the updates for corresponding bugs maintained by Vendor for each product relased by him.

##Strucuture of the Dapps

 - Register the admin   
 - Register IT Vendor who has active product
 - Register IT product made by the user
 - Update Information about the product
 - Release a Vulnerability
 Current version is a simple version of the contract however far more detailed DAPP for Vulnerability Feed is possible.

##Usage
 - Currently UI has not been made but contract is interactive via web3 console and can be deployed using scripts kept in [Test_Script](https://github.com/18dew/Algorythmix/tree/master/Test_work)

## Future work
  - To add CVSS type scoring mechanism.
  - To add various other methods of Security intelligence like MAEC etc on the decentralized world.
