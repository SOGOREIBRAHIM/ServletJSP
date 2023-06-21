package beans;

public class UserBean {
//	Declaration des attributs
	private String nom;
	private String prenom;
	private String pseudo;
	private String email;
	private String pwd;
	private String re_pwd;
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getPrenom() {
		return prenom;
	}
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	public String getPseudo() {
		return pseudo;
	}
	public void setPseudo(String pseudo) {
		this.pseudo = pseudo;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getRe_pwd() {
		return re_pwd;
	}
	public void setRe_pwd(String re_pwd) {
		this.re_pwd = re_pwd;
	}
	public UserBean(String nom, String prenom, String pseudo, String email, String pwd, String re_pwd) {
		super();
		this.nom = nom;
		this.prenom = prenom;
		this.pseudo = pseudo;
		this.email = email;
		this.pwd = pwd;
		this.re_pwd = re_pwd;
	}
	public UserBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	

}
