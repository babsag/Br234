.class public Lnet/minidev/json/JSONValue;
.super Ljava/lang/Object;
.source "JSONValue.java"


# static fields
.field public static COMPRESSION:Lnet/minidev/json/JSONStyle;

.field public static final defaultReader:Lnet/minidev/json/writer/JsonReader;

.field public static final defaultWriter:Lnet/minidev/json/reader/JsonWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lnet/minidev/json/JSONStyle;->NO_COMPRESS:Lnet/minidev/json/JSONStyle;

    sput-object v0, Lnet/minidev/json/JSONValue;->COMPRESSION:Lnet/minidev/json/JSONStyle;

    .line 2
    new-instance v0, Lnet/minidev/json/reader/JsonWriter;

    invoke-direct {v0}, Lnet/minidev/json/reader/JsonWriter;-><init>()V

    sput-object v0, Lnet/minidev/json/JSONValue;->defaultWriter:Lnet/minidev/json/reader/JsonWriter;

    .line 3
    new-instance v0, Lnet/minidev/json/writer/JsonReader;

    invoke-direct {v0}, Lnet/minidev/json/writer/JsonReader;-><init>()V

    sput-object v0, Lnet/minidev/json/JSONValue;->defaultReader:Lnet/minidev/json/writer/JsonReader;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 4
    sget-object v0, Lnet/minidev/json/JSONStyle;->MAX_COMPRESS:Lnet/minidev/json/JSONStyle;

    invoke-static {p0, v0}, Lnet/minidev/json/JSONValue;->compress(Ljava/lang/String;Lnet/minidev/json/JSONStyle;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static compress(Ljava/lang/String;Lnet/minidev/json/JSONStyle;)Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    new-instance v1, Lnet/minidev/json/parser/JSONParser;

    sget v2, Lnet/minidev/json/parser/JSONParser;->DEFAULT_PERMISSIVE_MODE:I

    invoke-direct {v1, v2}, Lnet/minidev/json/parser/JSONParser;-><init>(I)V

    new-instance v2, Lnet/minidev/json/writer/CompessorMapper;

    sget-object v3, Lnet/minidev/json/JSONValue;->defaultReader:Lnet/minidev/json/writer/JsonReader;

    invoke-direct {v2, v3, v0, p1}, Lnet/minidev/json/writer/CompessorMapper;-><init>(Lnet/minidev/json/writer/JsonReader;Ljava/lang/Appendable;Lnet/minidev/json/JSONStyle;)V

    invoke-virtual {v1, p0, v2}, Lnet/minidev/json/parser/JSONParser;->parse(Ljava/lang/String;Lnet/minidev/json/writer/JsonReaderI;)Ljava/lang/Object;

    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method public static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lnet/minidev/json/JSONValue;->COMPRESSION:Lnet/minidev/json/JSONStyle;

    invoke-static {p0, v0}, Lnet/minidev/json/JSONValue;->escape(Ljava/lang/String;Lnet/minidev/json/JSONStyle;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static escape(Ljava/lang/String;Lnet/minidev/json/JSONStyle;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    invoke-virtual {p1, p0, v0}, Lnet/minidev/json/JSONStyle;->escape(Ljava/lang/String;Ljava/lang/Appendable;)V

    .line 4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static escape(Ljava/lang/String;Ljava/lang/Appendable;)V
    .locals 1

    .line 5
    sget-object v0, Lnet/minidev/json/JSONValue;->COMPRESSION:Lnet/minidev/json/JSONStyle;

    invoke-static {p0, p1, v0}, Lnet/minidev/json/JSONValue;->escape(Ljava/lang/String;Ljava/lang/Appendable;Lnet/minidev/json/JSONStyle;)V

    return-void
.end method

.method public static escape(Ljava/lang/String;Ljava/lang/Appendable;Lnet/minidev/json/JSONStyle;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-virtual {p2, p0, p1}, Lnet/minidev/json/JSONStyle;->escape(Ljava/lang/String;Ljava/lang/Appendable;)V

    return-void
.end method

.method public static isValidJson(Ljava/io/Reader;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lnet/minidev/json/parser/JSONParser;

    sget v1, Lnet/minidev/json/parser/JSONParser;->DEFAULT_PERMISSIVE_MODE:I

    invoke-direct {v0, v1}, Lnet/minidev/json/parser/JSONParser;-><init>(I)V

    sget-object v1, Lnet/minidev/json/writer/FakeMapper;->DEFAULT:Lnet/minidev/json/writer/JsonReaderI;

    invoke-virtual {v0, p0, v1}, Lnet/minidev/json/parser/JSONParser;->parse(Ljava/io/Reader;Lnet/minidev/json/writer/JsonReaderI;)Ljava/lang/Object;
    :try_end_0
    .catch Lnet/minidev/json/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isValidJson(Ljava/lang/String;)Z
    .locals 2

    .line 2
    :try_start_0
    new-instance v0, Lnet/minidev/json/parser/JSONParser;

    sget v1, Lnet/minidev/json/parser/JSONParser;->DEFAULT_PERMISSIVE_MODE:I

    invoke-direct {v0, v1}, Lnet/minidev/json/parser/JSONParser;-><init>(I)V

    sget-object v1, Lnet/minidev/json/writer/FakeMapper;->DEFAULT:Lnet/minidev/json/writer/JsonReaderI;

    invoke-virtual {v0, p0, v1}, Lnet/minidev/json/parser/JSONParser;->parse(Ljava/lang/String;Lnet/minidev/json/writer/JsonReaderI;)Ljava/lang/Object;
    :try_end_0
    .catch Lnet/minidev/json/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isValidJsonStrict(Ljava/io/Reader;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lnet/minidev/json/parser/JSONParser;

    const/16 v1, 0x290

    invoke-direct {v0, v1}, Lnet/minidev/json/parser/JSONParser;-><init>(I)V

    sget-object v1, Lnet/minidev/json/writer/FakeMapper;->DEFAULT:Lnet/minidev/json/writer/JsonReaderI;

    invoke-virtual {v0, p0, v1}, Lnet/minidev/json/parser/JSONParser;->parse(Ljava/io/Reader;Lnet/minidev/json/writer/JsonReaderI;)Ljava/lang/Object;
    :try_end_0
    .catch Lnet/minidev/json/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isValidJsonStrict(Ljava/lang/String;)Z
    .locals 2

    .line 2
    :try_start_0
    new-instance v0, Lnet/minidev/json/parser/JSONParser;

    const/16 v1, 0x290

    invoke-direct {v0, v1}, Lnet/minidev/json/parser/JSONParser;-><init>(I)V

    sget-object v1, Lnet/minidev/json/writer/FakeMapper;->DEFAULT:Lnet/minidev/json/writer/JsonReaderI;

    invoke-virtual {v0, p0, v1}, Lnet/minidev/json/parser/JSONParser;->parse(Ljava/lang/String;Lnet/minidev/json/writer/JsonReaderI;)Ljava/lang/Object;
    :try_end_0
    .catch Lnet/minidev/json/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static parse(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lnet/minidev/json/parser/JSONParser;

    sget v1, Lnet/minidev/json/parser/JSONParser;->DEFAULT_PERMISSIVE_MODE:I

    invoke-direct {v0, v1}, Lnet/minidev/json/parser/JSONParser;-><init>(I)V

    invoke-virtual {v0, p0}, Lnet/minidev/json/parser/JSONParser;->parse(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parse(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 3
    :try_start_0
    new-instance v0, Lnet/minidev/json/parser/JSONParser;

    sget v1, Lnet/minidev/json/parser/JSONParser;->DEFAULT_PERMISSIVE_MODE:I

    invoke-direct {v0, v1}, Lnet/minidev/json/parser/JSONParser;-><init>(I)V

    .line 4
    sget-object v1, Lnet/minidev/json/JSONValue;->defaultReader:Lnet/minidev/json/writer/JsonReader;

    invoke-virtual {v1, p1}, Lnet/minidev/json/writer/JsonReader;->getMapper(Ljava/lang/Class;)Lnet/minidev/json/writer/JsonReaderI;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lnet/minidev/json/parser/JSONParser;->parse(Ljava/io/InputStream;Lnet/minidev/json/writer/JsonReaderI;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parse(Ljava/io/InputStream;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "TT;)TT;"
        }
    .end annotation

    .line 16
    :try_start_0
    new-instance v0, Lnet/minidev/json/parser/JSONParser;

    sget v1, Lnet/minidev/json/parser/JSONParser;->DEFAULT_PERMISSIVE_MODE:I

    invoke-direct {v0, v1}, Lnet/minidev/json/parser/JSONParser;-><init>(I)V

    .line 17
    new-instance v1, Lnet/minidev/json/writer/UpdaterMapper;

    sget-object v2, Lnet/minidev/json/JSONValue;->defaultReader:Lnet/minidev/json/writer/JsonReader;

    invoke-direct {v1, v2, p1}, Lnet/minidev/json/writer/UpdaterMapper;-><init>(Lnet/minidev/json/writer/JsonReader;Ljava/lang/Object;)V

    invoke-virtual {v0, p0, v1}, Lnet/minidev/json/parser/JSONParser;->parse(Ljava/io/InputStream;Lnet/minidev/json/writer/JsonReaderI;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parse(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 2

    .line 5
    :try_start_0
    new-instance v0, Lnet/minidev/json/parser/JSONParser;

    sget v1, Lnet/minidev/json/parser/JSONParser;->DEFAULT_PERMISSIVE_MODE:I

    invoke-direct {v0, v1}, Lnet/minidev/json/parser/JSONParser;-><init>(I)V

    invoke-virtual {v0, p0}, Lnet/minidev/json/parser/JSONParser;->parse(Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parse(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 8
    :try_start_0
    new-instance v0, Lnet/minidev/json/parser/JSONParser;

    sget v1, Lnet/minidev/json/parser/JSONParser;->DEFAULT_PERMISSIVE_MODE:I

    invoke-direct {v0, v1}, Lnet/minidev/json/parser/JSONParser;-><init>(I)V

    .line 9
    sget-object v1, Lnet/minidev/json/JSONValue;->defaultReader:Lnet/minidev/json/writer/JsonReader;

    invoke-virtual {v1, p1}, Lnet/minidev/json/writer/JsonReader;->getMapper(Ljava/lang/Class;)Lnet/minidev/json/writer/JsonReaderI;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lnet/minidev/json/parser/JSONParser;->parse(Ljava/io/Reader;Lnet/minidev/json/writer/JsonReaderI;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parse(Ljava/io/Reader;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "TT;)TT;"
        }
    .end annotation

    .line 10
    :try_start_0
    new-instance v0, Lnet/minidev/json/parser/JSONParser;

    sget v1, Lnet/minidev/json/parser/JSONParser;->DEFAULT_PERMISSIVE_MODE:I

    invoke-direct {v0, v1}, Lnet/minidev/json/parser/JSONParser;-><init>(I)V

    .line 11
    new-instance v1, Lnet/minidev/json/writer/UpdaterMapper;

    sget-object v2, Lnet/minidev/json/JSONValue;->defaultReader:Lnet/minidev/json/writer/JsonReader;

    invoke-direct {v1, v2, p1}, Lnet/minidev/json/writer/UpdaterMapper;-><init>(Lnet/minidev/json/writer/JsonReader;Ljava/lang/Object;)V

    invoke-virtual {v0, p0, v1}, Lnet/minidev/json/parser/JSONParser;->parse(Ljava/io/Reader;Lnet/minidev/json/writer/JsonReaderI;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected static parse(Ljava/io/Reader;Lnet/minidev/json/writer/JsonReaderI;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Lnet/minidev/json/writer/JsonReaderI<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 12
    :try_start_0
    new-instance v0, Lnet/minidev/json/parser/JSONParser;

    sget v1, Lnet/minidev/json/parser/JSONParser;->DEFAULT_PERMISSIVE_MODE:I

    invoke-direct {v0, v1}, Lnet/minidev/json/parser/JSONParser;-><init>(I)V

    .line 13
    invoke-virtual {v0, p0, p1}, Lnet/minidev/json/parser/JSONParser;->parse(Ljava/io/Reader;Lnet/minidev/json/writer/JsonReaderI;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 24
    :try_start_0
    new-instance v0, Lnet/minidev/json/parser/JSONParser;

    sget v1, Lnet/minidev/json/parser/JSONParser;->DEFAULT_PERMISSIVE_MODE:I

    invoke-direct {v0, v1}, Lnet/minidev/json/parser/JSONParser;-><init>(I)V

    invoke-virtual {v0, p0}, Lnet/minidev/json/parser/JSONParser;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 14
    :try_start_0
    new-instance v0, Lnet/minidev/json/parser/JSONParser;

    sget v1, Lnet/minidev/json/parser/JSONParser;->DEFAULT_PERMISSIVE_MODE:I

    invoke-direct {v0, v1}, Lnet/minidev/json/parser/JSONParser;-><init>(I)V

    .line 15
    sget-object v1, Lnet/minidev/json/JSONValue;->defaultReader:Lnet/minidev/json/writer/JsonReader;

    invoke-virtual {v1, p1}, Lnet/minidev/json/writer/JsonReader;->getMapper(Ljava/lang/Class;)Lnet/minidev/json/writer/JsonReaderI;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lnet/minidev/json/parser/JSONParser;->parse(Ljava/lang/String;Lnet/minidev/json/writer/JsonReaderI;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 18
    :try_start_0
    new-instance v0, Lnet/minidev/json/parser/JSONParser;

    sget v1, Lnet/minidev/json/parser/JSONParser;->DEFAULT_PERMISSIVE_MODE:I

    invoke-direct {v0, v1}, Lnet/minidev/json/parser/JSONParser;-><init>(I)V

    .line 19
    new-instance v1, Lnet/minidev/json/writer/UpdaterMapper;

    sget-object v2, Lnet/minidev/json/JSONValue;->defaultReader:Lnet/minidev/json/writer/JsonReader;

    invoke-direct {v1, v2, p1}, Lnet/minidev/json/writer/UpdaterMapper;-><init>(Lnet/minidev/json/writer/JsonReader;Ljava/lang/Object;)V

    invoke-virtual {v0, p0, v1}, Lnet/minidev/json/parser/JSONParser;->parse(Ljava/lang/String;Lnet/minidev/json/writer/JsonReaderI;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected static parse(Ljava/lang/String;Lnet/minidev/json/writer/JsonReaderI;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lnet/minidev/json/writer/JsonReaderI<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 22
    :try_start_0
    new-instance v0, Lnet/minidev/json/parser/JSONParser;

    sget v1, Lnet/minidev/json/parser/JSONParser;->DEFAULT_PERMISSIVE_MODE:I

    invoke-direct {v0, v1}, Lnet/minidev/json/parser/JSONParser;-><init>(I)V

    .line 23
    invoke-virtual {v0, p0, p1}, Lnet/minidev/json/parser/JSONParser;->parse(Ljava/lang/String;Lnet/minidev/json/writer/JsonReaderI;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parse([B)Ljava/lang/Object;
    .locals 2

    .line 2
    :try_start_0
    new-instance v0, Lnet/minidev/json/parser/JSONParser;

    sget v1, Lnet/minidev/json/parser/JSONParser;->DEFAULT_PERMISSIVE_MODE:I

    invoke-direct {v0, v1}, Lnet/minidev/json/parser/JSONParser;-><init>(I)V

    invoke-virtual {v0, p0}, Lnet/minidev/json/parser/JSONParser;->parse([B)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parse([BLjava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 6
    :try_start_0
    new-instance v0, Lnet/minidev/json/parser/JSONParser;

    sget v1, Lnet/minidev/json/parser/JSONParser;->DEFAULT_PERMISSIVE_MODE:I

    invoke-direct {v0, v1}, Lnet/minidev/json/parser/JSONParser;-><init>(I)V

    .line 7
    sget-object v1, Lnet/minidev/json/JSONValue;->defaultReader:Lnet/minidev/json/writer/JsonReader;

    invoke-virtual {v1, p1}, Lnet/minidev/json/writer/JsonReader;->getMapper(Ljava/lang/Class;)Lnet/minidev/json/writer/JsonReaderI;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lnet/minidev/json/parser/JSONParser;->parse([BLnet/minidev/json/writer/JsonReaderI;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected static parse([BLnet/minidev/json/writer/JsonReaderI;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Lnet/minidev/json/writer/JsonReaderI<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 20
    :try_start_0
    new-instance v0, Lnet/minidev/json/parser/JSONParser;

    sget v1, Lnet/minidev/json/parser/JSONParser;->DEFAULT_PERMISSIVE_MODE:I

    invoke-direct {v0, v1}, Lnet/minidev/json/parser/JSONParser;-><init>(I)V

    .line 21
    invoke-virtual {v0, p0, p1}, Lnet/minidev/json/parser/JSONParser;->parse([BLnet/minidev/json/writer/JsonReaderI;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseKeepingOrder(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lnet/minidev/json/parser/JSONParser;

    sget v1, Lnet/minidev/json/parser/JSONParser;->DEFAULT_PERMISSIVE_MODE:I

    invoke-direct {v0, v1}, Lnet/minidev/json/parser/JSONParser;-><init>(I)V

    sget-object v1, Lnet/minidev/json/JSONValue;->defaultReader:Lnet/minidev/json/writer/JsonReader;

    iget-object v1, v1, Lnet/minidev/json/writer/JsonReader;->DEFAULT_ORDERED:Lnet/minidev/json/writer/JsonReaderI;

    invoke-virtual {v0, p0, v1}, Lnet/minidev/json/parser/JSONParser;->parse(Ljava/io/Reader;Lnet/minidev/json/writer/JsonReaderI;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseKeepingOrder(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 2
    :try_start_0
    new-instance v0, Lnet/minidev/json/parser/JSONParser;

    sget v1, Lnet/minidev/json/parser/JSONParser;->DEFAULT_PERMISSIVE_MODE:I

    invoke-direct {v0, v1}, Lnet/minidev/json/parser/JSONParser;-><init>(I)V

    sget-object v1, Lnet/minidev/json/JSONValue;->defaultReader:Lnet/minidev/json/writer/JsonReader;

    iget-object v1, v1, Lnet/minidev/json/writer/JsonReader;->DEFAULT_ORDERED:Lnet/minidev/json/writer/JsonReaderI;

    invoke-virtual {v0, p0, v1}, Lnet/minidev/json/parser/JSONParser;->parse(Ljava/lang/String;Lnet/minidev/json/writer/JsonReaderI;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseStrict(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/minidev/json/parser/ParseException;
        }
    .end annotation

    .line 1
    new-instance v0, Lnet/minidev/json/parser/JSONParser;

    const/16 v1, 0x290

    invoke-direct {v0, v1}, Lnet/minidev/json/parser/JSONParser;-><init>(I)V

    sget-object v1, Lnet/minidev/json/JSONValue;->defaultReader:Lnet/minidev/json/writer/JsonReader;

    iget-object v1, v1, Lnet/minidev/json/writer/JsonReader;->DEFAULT:Lnet/minidev/json/writer/JsonReaderI;

    invoke-virtual {v0, p0, v1}, Lnet/minidev/json/parser/JSONParser;->parse(Ljava/io/Reader;Lnet/minidev/json/writer/JsonReaderI;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static parseStrict(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/minidev/json/parser/ParseException;
        }
    .end annotation

    .line 2
    new-instance v0, Lnet/minidev/json/parser/JSONParser;

    const/16 v1, 0x290

    invoke-direct {v0, v1}, Lnet/minidev/json/parser/JSONParser;-><init>(I)V

    sget-object v1, Lnet/minidev/json/JSONValue;->defaultReader:Lnet/minidev/json/writer/JsonReader;

    iget-object v1, v1, Lnet/minidev/json/writer/JsonReader;->DEFAULT:Lnet/minidev/json/writer/JsonReaderI;

    invoke-virtual {v0, p0, v1}, Lnet/minidev/json/parser/JSONParser;->parse(Ljava/lang/String;Lnet/minidev/json/writer/JsonReaderI;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static parseWithException(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/minidev/json/parser/ParseException;
        }
    .end annotation

    .line 2
    new-instance v0, Lnet/minidev/json/parser/JSONParser;

    sget v1, Lnet/minidev/json/parser/JSONParser;->DEFAULT_PERMISSIVE_MODE:I

    invoke-direct {v0, v1}, Lnet/minidev/json/parser/JSONParser;-><init>(I)V

    sget-object v1, Lnet/minidev/json/JSONValue;->defaultReader:Lnet/minidev/json/writer/JsonReader;

    iget-object v1, v1, Lnet/minidev/json/writer/JsonReader;->DEFAULT:Lnet/minidev/json/writer/JsonReaderI;

    invoke-virtual {v0, p0, v1}, Lnet/minidev/json/parser/JSONParser;->parse(Ljava/io/InputStream;Lnet/minidev/json/writer/JsonReaderI;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static parseWithException(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/minidev/json/parser/ParseException;
        }
    .end annotation

    .line 3
    new-instance v0, Lnet/minidev/json/parser/JSONParser;

    sget v1, Lnet/minidev/json/parser/JSONParser;->DEFAULT_PERMISSIVE_MODE:I

    invoke-direct {v0, v1}, Lnet/minidev/json/parser/JSONParser;-><init>(I)V

    sget-object v1, Lnet/minidev/json/JSONValue;->defaultReader:Lnet/minidev/json/writer/JsonReader;

    iget-object v1, v1, Lnet/minidev/json/writer/JsonReader;->DEFAULT:Lnet/minidev/json/writer/JsonReaderI;

    invoke-virtual {v0, p0, v1}, Lnet/minidev/json/parser/JSONParser;->parse(Ljava/io/Reader;Lnet/minidev/json/writer/JsonReaderI;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static parseWithException(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/minidev/json/parser/ParseException;
        }
    .end annotation

    .line 4
    new-instance v0, Lnet/minidev/json/parser/JSONParser;

    sget v1, Lnet/minidev/json/parser/JSONParser;->DEFAULT_PERMISSIVE_MODE:I

    invoke-direct {v0, v1}, Lnet/minidev/json/parser/JSONParser;-><init>(I)V

    sget-object v1, Lnet/minidev/json/JSONValue;->defaultReader:Lnet/minidev/json/writer/JsonReader;

    iget-object v1, v1, Lnet/minidev/json/writer/JsonReader;->DEFAULT:Lnet/minidev/json/writer/JsonReaderI;

    invoke-virtual {v0, p0, v1}, Lnet/minidev/json/parser/JSONParser;->parse(Ljava/lang/String;Lnet/minidev/json/writer/JsonReaderI;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static parseWithException(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/minidev/json/parser/ParseException;
        }
    .end annotation

    .line 5
    new-instance v0, Lnet/minidev/json/parser/JSONParser;

    sget v1, Lnet/minidev/json/parser/JSONParser;->DEFAULT_PERMISSIVE_MODE:I

    invoke-direct {v0, v1}, Lnet/minidev/json/parser/JSONParser;-><init>(I)V

    .line 6
    sget-object v1, Lnet/minidev/json/JSONValue;->defaultReader:Lnet/minidev/json/writer/JsonReader;

    invoke-virtual {v1, p1}, Lnet/minidev/json/writer/JsonReader;->getMapper(Ljava/lang/Class;)Lnet/minidev/json/writer/JsonReaderI;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lnet/minidev/json/parser/JSONParser;->parse(Ljava/lang/String;Lnet/minidev/json/writer/JsonReaderI;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static parseWithException([B)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/minidev/json/parser/ParseException;
        }
    .end annotation

    .line 1
    new-instance v0, Lnet/minidev/json/parser/JSONParser;

    sget v1, Lnet/minidev/json/parser/JSONParser;->DEFAULT_PERMISSIVE_MODE:I

    invoke-direct {v0, v1}, Lnet/minidev/json/parser/JSONParser;-><init>(I)V

    sget-object v1, Lnet/minidev/json/JSONValue;->defaultReader:Lnet/minidev/json/writer/JsonReader;

    iget-object v1, v1, Lnet/minidev/json/writer/JsonReader;->DEFAULT:Lnet/minidev/json/writer/JsonReaderI;

    invoke-virtual {v0, p0, v1}, Lnet/minidev/json/parser/JSONParser;->parse([BLnet/minidev/json/writer/JsonReaderI;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static registerReader(Ljava/lang/Class;Lnet/minidev/json/writer/JsonReaderI;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lnet/minidev/json/writer/JsonReaderI<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lnet/minidev/json/JSONValue;->defaultReader:Lnet/minidev/json/writer/JsonReader;

    invoke-virtual {v0, p0, p1}, Lnet/minidev/json/writer/JsonReader;->registerReader(Ljava/lang/Class;Lnet/minidev/json/writer/JsonReaderI;)V

    return-void
.end method

.method public static registerWriter(Ljava/lang/Class;Lnet/minidev/json/reader/JsonWriterI;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Lnet/minidev/json/reader/JsonWriterI<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lnet/minidev/json/JSONValue;->defaultWriter:Lnet/minidev/json/reader/JsonWriter;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, p1, v1}, Lnet/minidev/json/reader/JsonWriter;->registerWriter(Lnet/minidev/json/reader/JsonWriterI;[Ljava/lang/Class;)V

    return-void
.end method

.method public static remapField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lnet/minidev/json/JSONValue;->defaultReader:Lnet/minidev/json/writer/JsonReader;

    invoke-virtual {v0, p0, p1, p2}, Lnet/minidev/json/writer/JsonReader;->remapField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lnet/minidev/json/JSONValue;->defaultWriter:Lnet/minidev/json/reader/JsonWriter;

    invoke-virtual {v0, p0, p2, p1}, Lnet/minidev/json/reader/JsonWriter;->remapField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static toJSONString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lnet/minidev/json/JSONValue;->COMPRESSION:Lnet/minidev/json/JSONStyle;

    invoke-static {p0, v0}, Lnet/minidev/json/JSONValue;->toJSONString(Ljava/lang/Object;Lnet/minidev/json/JSONStyle;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toJSONString(Ljava/lang/Object;Lnet/minidev/json/JSONStyle;)Ljava/lang/String;
    .locals 1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    :try_start_0
    invoke-static {p0, v0, p1}, Lnet/minidev/json/JSONValue;->writeJSONString(Ljava/lang/Object;Ljava/lang/Appendable;Lnet/minidev/json/JSONStyle;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :catch_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static uncompress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lnet/minidev/json/JSONStyle;->NO_COMPRESS:Lnet/minidev/json/JSONStyle;

    invoke-static {p0, v0}, Lnet/minidev/json/JSONValue;->compress(Ljava/lang/String;Lnet/minidev/json/JSONStyle;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static writeJSONString(Ljava/lang/Object;Ljava/lang/Appendable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lnet/minidev/json/JSONValue;->COMPRESSION:Lnet/minidev/json/JSONStyle;

    invoke-static {p0, p1, v0}, Lnet/minidev/json/JSONValue;->writeJSONString(Ljava/lang/Object;Ljava/lang/Appendable;Lnet/minidev/json/JSONStyle;)V

    return-void
.end method

.method public static writeJSONString(Ljava/lang/Object;Ljava/lang/Appendable;Lnet/minidev/json/JSONStyle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "null"

    .line 2
    invoke-interface {p1, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 4
    sget-object v1, Lnet/minidev/json/JSONValue;->defaultWriter:Lnet/minidev/json/reader/JsonWriter;

    invoke-virtual {v1, v0}, Lnet/minidev/json/reader/JsonWriter;->getWrite(Ljava/lang/Class;)Lnet/minidev/json/reader/JsonWriterI;

    move-result-object v2

    if-nez v2, :cond_3

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    sget-object v2, Lnet/minidev/json/reader/JsonWriter;->arrayWriter:Lnet/minidev/json/reader/JsonWriterI;

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/minidev/json/reader/JsonWriter;->getWriterByInterface(Ljava/lang/Class;)Lnet/minidev/json/reader/JsonWriterI;

    move-result-object v2

    if-nez v2, :cond_2

    .line 8
    sget-object v2, Lnet/minidev/json/reader/JsonWriter;->beansWriterASM:Lnet/minidev/json/reader/JsonWriterI;

    :cond_2
    :goto_0
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 9
    invoke-virtual {v1, v2, v3}, Lnet/minidev/json/reader/JsonWriter;->registerWriter(Lnet/minidev/json/reader/JsonWriterI;[Ljava/lang/Class;)V

    .line 10
    :cond_3
    invoke-interface {v2, p0, p1, p2}, Lnet/minidev/json/reader/JsonWriterI;->writeJSONString(Ljava/lang/Object;Ljava/lang/Appendable;Lnet/minidev/json/JSONStyle;)V

    return-void
.end method
