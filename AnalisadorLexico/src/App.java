import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.CharStreams;
import org.antlr.v4.runtime.Token;

import java.io.IOException;

public class App {

    public static void  main (String[] args){
        String filename = "C:\\Users\\aleme\\OneDrive\\Desktop\\v2analisadorLexico\\AnalisadorLexico\\src\\codigo.txt";
        try{
            CharStream input = CharStreams.fromFileName(filename);
            MinhaGramaticaLexer lexer = new MinhaGramaticaLexer(input);
            Token token;
            while (!lexer._hitEOF){
                token = lexer.nextToken();
                System.out.println("Token: <Classe: "+lexer.getVocabulary().getSymbolicName(token.getType()) +" ,Lexema: "+ token.getText() +">");
                }

        } catch (IOException e){
            e.printStackTrace();
        }
    }
}
