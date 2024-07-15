package com.w3lsolucoes.event_control.entities;

import jakarta.persistence.*;

import java.time.Instant;

@Entity
@Table(name = "block")
public class Block {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(columnDefinition = "TIMESTAMP WITHOUT TIME ZONE") // UTC
    private Instant start;

    @Column(columnDefinition = "TIMESTAMP WITHOUT TIME ZONE") // UTC
    private Instant endInstant;

    @ManyToOne
    @JoinColumn(name = "activity_id")
    private Activity activity;

    public Block() {
    }

    public Block(int id, Instant start, Instant endInstant) {
        this.id = id;
        this.start = start;
        this.endInstant = endInstant;
    }

    // getter and setters

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Instant getStart() {
        return start;
    }

    public void setStart(Instant start) {
        this.start = start;
    }

    public Instant getEndInstant() {
        return endInstant;
    }

    public void setEndInstant(Instant endendInstant) {
        this.endInstant = endendInstant;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Block block = (Block) o;
        return id == block.id;
    }

    @Override
    public int hashCode() {
        return Long.hashCode(id);
    }


}
