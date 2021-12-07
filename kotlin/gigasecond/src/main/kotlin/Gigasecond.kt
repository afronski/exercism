import java.time.LocalDate
import java.time.LocalDateTime

class Gigasecond(val originalDate: LocalDateTime) {
   val date: LocalDateTime = this.originalDate.plusSeconds(1_000_000_000)

    constructor(date: LocalDate) : this(date.atStartOfDay()) {}
}
