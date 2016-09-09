package ni.org.ics.estudios.cohorte.muestreoanual.domain;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * Simple objeto de dominio que representa los datos de la toma de muestra
 * 
 * @author Brenda Lopez
 **/

@Entity
@Table(name = "nodata", catalog = "muestreoanual")
public class RazonNoData {


	/**
	 * 
	 */
	
	private RazonNoDataId rndId;
	private Integer razon;
	private String otraRazon;
	private String username;
	private String estado;

	@EmbeddedId
	public RazonNoDataId getRndId() {
		return rndId;
	}

	public void setRndId(RazonNoDataId rndId) {
		this.rndId = rndId;
	}
	
	@Column(name="razon", nullable = true)
	public Integer getRazon() {
		return razon;
	}

	public void setRazon(Integer razon) {
		this.razon = razon;
	}

	@Column(name="orazon", nullable = true)
	public String getOtraRazon() {
		return otraRazon;
	}

	public void setOtraRazon(String otraRazon) {
		this.otraRazon = otraRazon;
	}
	
	@Column(name="username", nullable = true)
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	@Column(name="estado", nullable = true)
	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}
	
	
}
