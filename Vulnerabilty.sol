contract VM {
	address maker;
	uint status;
	struct Company {
		uint c_id;
		string c_name; 
		string c_details;
		string c_link;
		address c_addr;
	}
	struct Product {
		uint p_id;
		uint p_c_id;
		string p_name; 
		string p_details;
		
		string p_version;
		string p_link;
	}

	struct Vuln {
		uint vl_id;
		string v_name; 
		string v_link;
		uint v_p_id;
		uint v_c_id;
		uint v_cvss;
	}
	uint co_no;
	uint pr_no;
	uint vl_no;
	mapping (uint => Company) Companys;
	mapping (uint => Product) Products;
	mapping (uint => Vuln) Vulns;
	
	function start(){
		if (status != 1 ){
			maker = msg.sender; 
			status = 1;
			co_no =1;
			pr_no =1;
			vl_no =1;
		}
	}

	function register_vendor ( string c_name , string c_details , string c_link) returns (uint co_id) { 
		co_id = co_no++; 
		Companys[co_id] = Company ( co_id , c_name , c_details , c_link, msg.sender );
	}

	function add_prod(string p_name , string p_details , string p_version , string p_link , uint p_c_id ) returns (uint pr_id){
		if ( Companys[p_c_id].c_addr == msg.sender ){
			pr_id = pr_no++;
			Products[pr_id]= Product ( pr_id ,p_c_id, p_name , p_details, p_version , p_link ); 	
		}
	}

	function add_vuln(string v_name , string v_link , uint v_p_id , uint v_c_id ,uint v_cvss ) returns (uint vl_id){
		if ( Companys[v_c_id].c_addr == msg.sender ){
			if ( Products[v_p_id].p_id == v_p_id ){
				vl_id = vl_no++;
				Vulns[vl_id] = Vuln (vl_id, v_name , v_link, v_p_id, v_c_id,v_cvss);
			}	
		}
	}
	function list_vendor_details(uint co_id) returns ( uint a, string b , string c , string d ) {
		if (Companys[co_id].c_id == co_id ){
			a=Companys[co_id].c_id;
			b=Companys[co_id].c_name;
			c=Companys[co_id].c_details;
			d=Companys[co_id].c_link;
		}
	}
	function list_products_details(uint p_id) returns (uint a, string b, string c , string d, string e ){
		if (Products[p_id].p_id ==p_id){
			a = Products[p_id].p_id;
			b = Products[p_id].p_name;
			c = Products[p_id].p_details;
			d = Products[p_id].p_version;
			e = Products[p_id].p_link;
			}
	}
	function list_vuln_details(uint vl_id) returns (uint a, string b, string c , uint d){
		if (Vulns[vl_id].vl_id ==vl_id){
			a = Vulns[vl_id].vl_id;
			b = Vulns[vl_id].v_name;
			c = Vulns[vl_id].v_link;
			d = Vulns[vl_id].v_cvss;
		}
	}
}