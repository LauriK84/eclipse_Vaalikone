package entity;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the dogbreed database table.
 * 
 */
@Entity
@NamedQuery(name="Dogbreed.findAll", query="SELECT d FROM Dogbreed d")
public class Dogbreed implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int id;

	private String breed;

	private int weight;

	public Dogbreed() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getBreed() {
		return this.breed;
	}

	public void setBreed(String breed) {
		this.breed = breed;
	}

	public int getWeight() {
		return this.weight;
	}

	public void setWeight(int weight) {
		this.weight = weight;
	}

}