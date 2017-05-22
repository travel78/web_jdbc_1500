package entity;


import lombok.*;

@Data
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode
@Builder
public class User {
    private int id; private String name; private String password;
}
