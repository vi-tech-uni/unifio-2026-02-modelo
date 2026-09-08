package br.edu.unifio.eventos;

import jakarta.persistence.*;
import lombok.*;

import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "palestrante")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Palestrante {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false, length = 150)
    private String nome;

    @Column(name = "mini_bio", length = 500)
    private String miniBio;

    @Column(nullable = false, length = 150)
    private String email;

    @Builder.Default
    @OneToMany(mappedBy = "palestrante", cascade = CascadeType.ALL)
    @ToString.Exclude
    private List<Evento> eventos = new ArrayList<>();

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Palestrante that)) return false;
        return id != null && id.equals(that.id);
    }

    @Override
    public int hashCode() {
        return getClass().hashCode();
    }
}
