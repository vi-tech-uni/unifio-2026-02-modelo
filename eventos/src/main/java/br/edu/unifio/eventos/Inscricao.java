package br.edu.unifio.eventos;

import jakarta.persistence.*;
import lombok.*;

import java.time.LocalDateTime;

@Entity
@Table(name = "inscricao")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Inscricao {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "data_inscricao", nullable = false)
    private LocalDateTime dataInscricao;

    @Enumerated(EnumType.STRING)
    @Column(nullable = false, length = 20)
    @Builder.Default
    private StatusInscricao status = StatusInscricao.CONFIRMADA;

    public enum StatusInscricao {
        CONFIRMADA,
        PENDENTE,
        CANCELADA
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "evento_id", nullable = false)
    @ToString.Exclude
    private Evento evento;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "participante_id", nullable = false)
    @ToString.Exclude
    private Participante participante;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Inscricao that)) return false;
        return id != null && id.equals(that.id);
    }

    @Override
    public int hashCode() {
        return getClass().hashCode();
    }
}
