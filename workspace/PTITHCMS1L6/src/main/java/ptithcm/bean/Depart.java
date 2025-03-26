package ptithcm.bean;

import java.util.List;
import javax.persistence.*;

@Entity
@Table(name = "Departs")
public class Depart {
    @Id
    private String id;

    private String name;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
}
