package kodlama.io.demo.entities.concretes;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Table(name="programminglanguages")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Entity
public class ProgrammingLanguage {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name="name")
	private String name;
	
	@OneToMany(mappedBy = "programmingLanguage", cascade = CascadeType.ALL)
	Set<Technology> technologies;
}
