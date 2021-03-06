module Model.Language where

import Prelude (readsPrec)
import ClassyPrelude.Yesod
import Util.Multiline (multiline)
import Settings.StaticFiles

data Language = Assembly |
                Bash |
                C |
                Clojure |
                Coffeescript |
                Cpp |
                Csharp |
                D |
                Elixir |
                Erlang |
                Fsharp |
                Go |
                Haskell |
                Idris |
                Java |
                Javascript |
                Julia |
                Lua |
                Nim |
                Ocaml |
                Perl |
                Php |
                Python |
                Ruby |
                Rust |
                Scala |
                Swift |
                Plaintext
                deriving Eq


instance PathPiece Language where
    toPathPiece = pack . show
    fromPathPiece s = Just $ toLanguage s

instance Show Language where
    show Assembly = "assembly"
    show Bash = "bash"
    show C = "c"
    show Clojure = "clojure"
    show Coffeescript = "coffeescript"
    show Cpp = "cpp"
    show Csharp = "csharp"
    show D = "d"
    show Elixir = "elixir"
    show Erlang = "erlang"
    show Fsharp = "fsharp"
    show Go = "go"
    show Haskell = "haskell"
    show Idris = "idris"
    show Java = "java"
    show Javascript = "javascript"
    show Julia = "julia"
    show Lua = "lua"
    show Nim = "nim"
    show Ocaml = "ocaml"
    show Perl = "perl"
    show Php = "php"
    show Python = "python"
    show Ruby = "ruby"
    show Rust = "rust"
    show Scala = "scala"
    show Swift = "swift"
    show Plaintext = "plaintext"

instance Read Language where
    readsPrec _ value = [(toLanguage $ pack value, value)]

toLanguage :: Text -> Language
toLanguage "assembly" = Assembly
toLanguage "bash" = Bash
toLanguage "clojure" = Clojure
toLanguage "coffeescript" = Coffeescript
toLanguage "cpp" = Cpp
toLanguage "c" = C
toLanguage "csharp" = Csharp
toLanguage "d" = D
toLanguage "elixir" = Elixir
toLanguage "erlang" = Erlang
toLanguage "fsharp" = Fsharp
toLanguage "go" = Go
toLanguage "haskell" = Haskell
toLanguage "idris" = Idris
toLanguage "javascript" = Javascript
toLanguage "julia" = Julia
toLanguage "lua" = Lua
toLanguage "nim" = Nim
toLanguage "ocaml" = Ocaml
toLanguage "java" = Java
toLanguage "perl" = Perl
toLanguage "php" = Php
toLanguage "python" = Python
toLanguage "ruby" = Ruby
toLanguage "rust" = Rust
toLanguage "scala" = Scala
toLanguage "swift" = Swift
toLanguage _ = Plaintext

allLanguages :: [Language]
allLanguages = [
        Assembly,
        Bash,
        C,
        Clojure,
        Coffeescript,
        Cpp,
        Csharp,
        D,
        Elixir,
        Erlang,
        Fsharp,
        Go,
        Haskell,
        Idris,
        Java,
        Javascript,
        Julia,
        Lua,
        Nim,
        Ocaml,
        Perl,
        Php,
        Plaintext,
        Python,
        Ruby,
        Rust,
        Scala,
        Swift
    ]

languageFileExt :: Language -> Text
languageFileExt Assembly = "asm"
languageFileExt Bash = "sh"
languageFileExt C = "c"
languageFileExt Clojure = "clj"
languageFileExt Coffeescript = "coffee"
languageFileExt Cpp = "cpp"
languageFileExt Csharp = "cs"
languageFileExt D = "d"
languageFileExt Elixir = "ex"
languageFileExt Erlang = "erl"
languageFileExt Fsharp = "fs"
languageFileExt Go = "go"
languageFileExt Haskell = "hs"
languageFileExt Idris = "idr"
languageFileExt Java = "java"
languageFileExt Javascript = "js"
languageFileExt Julia = "jl"
languageFileExt Lua = "lua"
languageFileExt Nim = "nim"
languageFileExt Ocaml = "ml"
languageFileExt Perl = "pl"
languageFileExt Php = "php"
languageFileExt Python = "py"
languageFileExt Ruby = "rb"
languageFileExt Rust = "rs"
languageFileExt Scala = "scala"
languageFileExt Swift = "swift"
languageFileExt Plaintext = "txt"

languageDefaultFname :: Language -> Text
languageDefaultFname Java = "Main." ++ languageFileExt Java
languageDefaultFname lang = "main." ++ languageFileExt lang

languageLogo :: Language -> StaticRoute
languageLogo Assembly = img_generic_svg
languageLogo Bash = img_bash_svg
languageLogo C = img_c_svg
languageLogo Clojure = img_clojure_svg
languageLogo Coffeescript = img_coffeescript_svg
languageLogo Cpp = img_cpp_svg
languageLogo Csharp = img_csharp_svg
languageLogo D = img_d_svg
languageLogo Elixir = img_generic_svg
languageLogo Erlang = img_erlang_svg
languageLogo Fsharp = img_fsharp_svg
languageLogo Go = img_go_svg
languageLogo Haskell = img_haskell_svg
languageLogo Idris = img_idris_svg
languageLogo Java = img_java_svg
languageLogo Javascript = img_javascript_svg
languageLogo Julia = img_julia_svg
languageLogo Lua = img_lua_svg
languageLogo Nim = img_nim_svg
languageLogo Ocaml = img_ocaml_svg
languageLogo Perl = img_perl_svg
languageLogo Php = img_php_svg
languageLogo Python = img_python_svg
languageLogo Ruby = img_ruby_svg
languageLogo Rust = img_rust_svg
languageLogo Scala = img_scala_svg
languageLogo Swift = img_swift_svg
languageLogo Plaintext = img_plaintext_svg

languageLogoPng :: Language -> StaticRoute
languageLogoPng Assembly = img_generic_svg_png
languageLogoPng Bash = img_bash_svg_png
languageLogoPng C = img_c_svg_png
languageLogoPng Clojure = img_clojure_svg_png
languageLogoPng Coffeescript = img_coffeescript_svg_png
languageLogoPng Cpp = img_cpp_svg_png
languageLogoPng Csharp = img_csharp_svg_png
languageLogoPng D = img_d_svg_png
languageLogoPng Elixir = img_generic_svg_png
languageLogoPng Erlang = img_erlang_svg_png
languageLogoPng Fsharp = img_fsharp_svg_png
languageLogoPng Go = img_go_svg_png
languageLogoPng Haskell = img_haskell_svg_png
languageLogoPng Idris = img_idris_svg_png
languageLogoPng Java = img_java_svg_png
languageLogoPng Javascript = img_javascript_svg_png
languageLogoPng Julia = img_julia_svg_png
languageLogoPng Lua = img_lua_svg_png
languageLogoPng Nim = img_nim_svg_png
languageLogoPng Ocaml = img_ocaml_svg_png
languageLogoPng Perl = img_perl_svg_png
languageLogoPng Php = img_php_svg_png
languageLogoPng Python = img_python_svg_png
languageLogoPng Ruby = img_ruby_svg_png
languageLogoPng Rust = img_rust_svg_png
languageLogoPng Scala = img_scala_svg_png
languageLogoPng Swift = img_swift_svg_png
languageLogoPng Plaintext = img_plaintext_svg_png

languageAceMode :: Language -> Text
languageAceMode Assembly = "ace/mode/assembly_x86"
languageAceMode Bash = "ace/mode/sh"
languageAceMode C = "ace/mode/c_cpp"
languageAceMode Clojure = "ace/mode/clojure"
languageAceMode Coffeescript = "ace/mode/coffee"
languageAceMode Cpp = "ace/mode/c_cpp"
languageAceMode Csharp = "ace/mode/csharp"
languageAceMode D = "ace/mode/d"
languageAceMode Elixir = "ace/mode/elixir"
languageAceMode Erlang = "ace/mode/erlang"
languageAceMode Fsharp = "ace/mode/csharp"
languageAceMode Go = "ace/mode/golang"
languageAceMode Haskell = "ace/mode/haskell"
languageAceMode Idris = "ace/mode/plain_text"
languageAceMode Java = "ace/mode/java"
languageAceMode Javascript = "ace/mode/javascript"
languageAceMode Julia = "ace/mode/julia"
languageAceMode Lua = "ace/mode/lua"
languageAceMode Nim = "ace/mode/plain_text"
languageAceMode Ocaml = "ace/mode/ocaml"
languageAceMode Perl = "ace/mode/perl"
languageAceMode Php = "ace/mode/php"
languageAceMode Python = "ace/mode/python"
languageAceMode Ruby = "ace/mode/ruby"
languageAceMode Rust = "ace/mode/rust"
languageAceMode Scala = "ace/mode/scala"
languageAceMode Swift = "ace/mode/plain_text"
languageAceMode Plaintext = "ace/mode/plain_text"

languageName :: Language -> Text
languageName Assembly = "Assembly"
languageName Bash = "Bash"
languageName C = "C"
languageName Clojure = "Clojure"
languageName Coffeescript = "Coffeescript"
languageName Cpp = "C++"
languageName Csharp = "C#"
languageName D = "D"
languageName Elixir = "Elixir"
languageName Erlang = "Erlang"
languageName Fsharp = "F#"
languageName Go = "Go"
languageName Haskell = "Haskell"
languageName Idris = "Idris"
languageName Java = "Java"
languageName Javascript = "Javascript"
languageName Julia = "Julia"
languageName Lua = "Lua"
languageName Nim = "Nim"
languageName Ocaml = "Ocaml"
languageName Perl = "Perl"
languageName Php = "PHP"
languageName Python = "Python"
languageName Ruby = "Ruby"
languageName Rust = "Rust"
languageName Scala = "Scala"
languageName Swift = "Swift"
languageName Plaintext = "Plaintext"

languageIsRunnable :: Language -> Bool
languageIsRunnable Plaintext = False
languageIsRunnable _ = True

languageRunCmdExample :: Language -> String
languageRunCmdExample Assembly = "nasm -f elf64 -o a.o main.asm && ld -o a.out a.o && ./a.out"
languageRunCmdExample Bash = "bash main.sh"
languageRunCmdExample C = "clang main.c && ./a.out"
languageRunCmdExample Clojure = "java -cp /usr/share/java/clojure.jar clojure.main main.clj"
languageRunCmdExample Coffeescript = "coffee main.coffee"
languageRunCmdExample Cpp = "clang++ main.cpp && ./a.out"
languageRunCmdExample Csharp = "mcs -out:a.exe main.cs && mono a.exe"
languageRunCmdExample D = "dmd -ofa.out main.d && ./a.out"
languageRunCmdExample Elixir = "elixirc main.ex"
languageRunCmdExample Erlang = "escript main.erl"
languageRunCmdExample Fsharp = "fsharpc --out:a.exe main.fs > /dev/null && mono a.exe"
languageRunCmdExample Go = "go run main.go"
languageRunCmdExample Haskell = "runghc main.hs"
languageRunCmdExample Idris = "idris -o a.out main.idr && ./a.out"
languageRunCmdExample Java = "javac Main.java && java Main"
languageRunCmdExample Javascript = "node main.js"
languageRunCmdExample Julia = "julia main.jl"
languageRunCmdExample Lua = "lua main.lua"
languageRunCmdExample Nim = "nim --verbosity:0 compile --run main.nim"
languageRunCmdExample Ocaml = "ocamlc -o a.out main.ml && ./a.out"
languageRunCmdExample Perl = "perl main.pl"
languageRunCmdExample Php = "php main.php"
languageRunCmdExample Python = "python main.py"
languageRunCmdExample Ruby = "ruby main.rb"
languageRunCmdExample Rust = "rustc -o a.out main.rs && ./a.out"
languageRunCmdExample Scala = "scalac main.scala && scala Main"
languageRunCmdExample Swift = "swift main.swift"
languageRunCmdExample _ = ""


languageDefaultContent :: Language -> String
languageDefaultContent Assembly = [multiline|section .data
    msg db "Hello World!", 0ah

section .text
    global _start
_start:
    mov rax, 1
    mov rdi, 1
    mov rsi, msg
    mov rdx, 13
    syscall
    mov rax, 60
    mov rdi, 0
    syscall|]
languageDefaultContent Bash = [multiline|echo Hello World|]
languageDefaultContent C = [multiline|#include <stdio.h>

int main() {
    printf("Hello World!\n");
    return 0;
}|]
languageDefaultContent Clojure = [multiline|(println "Hello World!")|]
languageDefaultContent Coffeescript = [multiline|console.log "Hello World!"|]
languageDefaultContent Cpp = [multiline|#include <iostream>
using namespace std;

int main() {
    cout << "Hello World!";
    return 0;
}|]
languageDefaultContent Csharp = [multiline|using System;

class MainClass {
    static void Main() {
        Console.WriteLine("Hello World!");
    }
}|]
languageDefaultContent D = [multiline|import std.stdio;

void main()
{
    writeln("Hello World!");
}|]
languageDefaultContent Elixir = [multiline|IO.puts "Hello World!"|]
languageDefaultContent Erlang = [multiline|% escript will ignore the first line

main(_) ->
    io:format("Hello World!~n").|]
languageDefaultContent Fsharp = [multiline|printfn "Hello World!"|]
languageDefaultContent Go = [multiline|package main

import (
    "fmt"
)

func main() {
    fmt.Println("Hello World!")
}|]
languageDefaultContent Haskell = [multiline|main = putStrLn "Hello World!"|]
languageDefaultContent Idris = [multiline|module Main

main : IO ()
main = putStrLn "Hello World!"|]
languageDefaultContent Java = [multiline|class Main {
    public static void main(String[] args) {
        System.out.println("Hello World!");
    }
}|]
languageDefaultContent Javascript = [multiline|console.log("Hello World!");|]
languageDefaultContent Julia = [multiline|println("Hello world!")|]
languageDefaultContent Lua = [multiline|print("Hello World!");|]
languageDefaultContent Nim = [multiline|echo("Hello World!")|]
languageDefaultContent Ocaml = [multiline|print_endline "Hello World!"|]
languageDefaultContent Perl = [multiline|print "Hello World!\n";|]
languageDefaultContent Php = [multiline|<?php

echo "Hello World\n";|]
languageDefaultContent Python = [multiline|print("Hello World!")|]
languageDefaultContent Ruby = [multiline|puts "Hello World!"|]
languageDefaultContent Rust = [multiline|fn main() {
    println!("Hello World!");
}|]
languageDefaultContent Scala = [multiline|object Main extends App {
    println("Hello World!")
}|]
languageDefaultContent Swift = [multiline|print("Hello World!")|]
languageDefaultContent Plaintext = [multiline|Hello World!|]
