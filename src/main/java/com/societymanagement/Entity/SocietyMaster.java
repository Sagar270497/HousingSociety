package com.societymanagement.Entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "SOCIETYMASTER")
public class SocietyMaster {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int societyId;
	private String societyName;
	private String societyAdd;
	private String societyCity;
	private int societyFund;

	public int getSocietyId() {
		return societyId;
	}

	public void setSocietyId(int societyId) {
		this.societyId = societyId;
	}

	public String getSocietyName() {
		return societyName;
	}

	public void setSocietyName(String societyName) {
		this.societyName = societyName;
	}

	public String getSocietyAdd() {
		return societyAdd;
	}

	public void setSocietyAdd(String societyAdd) {
		this.societyAdd = societyAdd;
	}

	public String getSocietyCity() {
		return societyCity;
	}

	public void setSocietyCity(String societyCity) {
		this.societyCity = societyCity;
	}

	public int getSocietyFund() {
		return societyFund;
	}

	public void setSocietyFund(int societyFund) {
		this.societyFund = societyFund;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((societyAdd == null) ? 0 : societyAdd.hashCode());
		result = prime * result + ((societyCity == null) ? 0 : societyCity.hashCode());
		result = prime * result + societyFund;
		result = prime * result + societyId;
		result = prime * result + ((societyName == null) ? 0 : societyName.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		SocietyMaster other = (SocietyMaster) obj;
		if (societyAdd == null) {
			if (other.societyAdd != null)
				return false;
		} else if (!societyAdd.equals(other.societyAdd))
			return false;
		if (societyCity == null) {
			if (other.societyCity != null)
				return false;
		} else if (!societyCity.equals(other.societyCity))
			return false;
		if (societyFund != other.societyFund)
			return false;
		if (societyId != other.societyId)
			return false;
		if (societyName == null) {
			if (other.societyName != null)
				return false;
		} else if (!societyName.equals(other.societyName))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "SocietyMaster [societyId=" + societyId + ", societyName=" + societyName + ", societyAdd=" + societyAdd
				+ ", societyFund=" + societyFund + "]";
	}

}
