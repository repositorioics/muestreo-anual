package ni.org.ics.estudios.cohorte.muestreoanual.domain;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * Simple objeto de dominio que representa los datos de peso y talla de los
 * participantes en el estudio
 * 
 * @author William Aviles
 **/

@Entity
@Table(name = "pesoytalla", catalog = "muestreoanual")
public class PesoyTalla {

	/**
	 * 
	 */
	
	private PesoyTallaId ptId;
	private Double peso1;
	private Double peso2;
	private Double peso3;
	private Double talla1;
	private Double talla2;
	private Double talla3;
	private Double imc1;
	private Double imc2;
	private Double imc3;
	private Double difPeso;
	private Double difTalla;
	private MovilInfo movilInfo;


	@Column(name = "peso1", nullable = true)
	public Double getPeso1() {
		return peso1;
	}

	public void setPeso1(Double peso1) {
		this.peso1 = peso1;
	}

	@Column(name = "peso2", nullable = true)
	public Double getPeso2() {
		return peso2;
	}

	public void setPeso2(Double peso2) {
		this.peso2 = peso2;
	}

	@Column(name = "peso3", nullable = true)
	public Double getPeso3() {
		return peso3;
	}

	public void setPeso3(Double peso3) {
		this.peso3 = peso3;
	}

	@Column(name = "talla1", nullable = true)
	public Double getTalla1() {
		return talla1;
	}

	public void setTalla1(Double talla1) {
		this.talla1 = talla1;
	}

	@Column(name = "talla2", nullable = true)
	public Double getTalla2() {
		return talla2;
	}

	public void setTalla2(Double talla2) {
		this.talla2 = talla2;
	}

	@Column(name = "talla3", nullable = true)
	public Double getTalla3() {
		return talla3;
	}

	public void setTalla3(Double talla3) {
		this.talla3 = talla3;
	}

	@Column(name = "imc1", nullable = true)
	public Double getImc1() {
		return imc1;
	}

	public void setImc1(Double imc1) {
		this.imc1 = imc1;
	}

	@Column(name = "imc2", nullable = true)
	public Double getImc2() {
		return imc2;
	}

	public void setImc2(Double imc2) {
		this.imc2 = imc2;
	}

	@Column(name = "imc3", nullable = true)
	public Double getImc3() {
		return imc3;
	}

	public void setImc3(Double imc3) {
		this.imc3 = imc3;
	}

	@Column(name = "difpeso", nullable = true)
	public Double getDifPeso() {
		return difPeso;
	}

	public void setDifPeso(Double difPeso) {
		this.difPeso = difPeso;
	}

	@Column(name = "diftalla", nullable = true)
	public Double getDifTalla() {
		return difTalla;
	}

	public void setDifTalla(Double difTalla) {
		this.difTalla = difTalla;
	}

	public MovilInfo getMovilInfo() {
		return movilInfo;
	}

	public void setMovilInfo(MovilInfo movilInfo) {
		this.movilInfo = movilInfo;
	}

	@EmbeddedId
	public PesoyTallaId getPtId() {
		return ptId;
	}

	public void setPtId(PesoyTallaId ptId) {
		this.ptId = ptId;
	}

}
