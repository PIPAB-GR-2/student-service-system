package pl.edu.wwsis.pipab.sos.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "student_book")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class StudentBook {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "student_id", nullable = false)
    private Long studentId;

    @Column(name = "book_id", nullable = false)
    private Long bookId;

    @Column(name = "student_book_status_id", nullable = false)
    private Long studentBookStatusId;

    @Column(name = "borrow_date", nullable = true)
    private Date borrowDate;

    @Column(name = "return_date", nullable = true)
    private Date returnDate;
}
