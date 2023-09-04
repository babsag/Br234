.class Lnet/minidev/json/parser/d;
.super Lnet/minidev/json/parser/e;
.source "JSONParserReader.java"


# instance fields
.field private x:Ljava/io/Reader;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lnet/minidev/json/parser/e;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected f()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/minidev/json/parser/d;->x:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x1a

    goto :goto_0

    :cond_0
    int-to-char v0, v0

    .line 2
    :goto_0
    iput-char v0, p0, Lnet/minidev/json/parser/JSONParserBase;->f:C

    .line 3
    iget v0, p0, Lnet/minidev/json/parser/JSONParserBase;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/minidev/json/parser/JSONParserBase;->l:I

    return-void
.end method

.method protected k()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/minidev/json/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/minidev/json/parser/d;->x:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    int-to-char v0, v0

    .line 2
    iput-char v0, p0, Lnet/minidev/json/parser/JSONParserBase;->f:C

    return-void

    .line 3
    :cond_0
    new-instance v0, Lnet/minidev/json/parser/ParseException;

    iget v1, p0, Lnet/minidev/json/parser/JSONParserBase;->l:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x3

    const-string v3, "EOF"

    invoke-direct {v0, v1, v2, v3}, Lnet/minidev/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v0
.end method

.method protected n()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/minidev/json/parser/JSONParserBase;->i:Lnet/minidev/json/parser/JSONParserBase$MSB;

    iget-char v1, p0, Lnet/minidev/json/parser/JSONParserBase;->f:C

    invoke-virtual {v0, v1}, Lnet/minidev/json/parser/JSONParserBase$MSB;->append(C)V

    .line 2
    iget-object v0, p0, Lnet/minidev/json/parser/d;->x:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x1a

    .line 3
    iput-char v0, p0, Lnet/minidev/json/parser/JSONParserBase;->f:C

    goto :goto_0

    :cond_0
    int-to-char v0, v0

    .line 4
    iput-char v0, p0, Lnet/minidev/json/parser/JSONParserBase;->f:C

    .line 5
    iget v0, p0, Lnet/minidev/json/parser/JSONParserBase;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/minidev/json/parser/JSONParserBase;->l:I

    :goto_0
    return-void
.end method

.method public u(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/minidev/json/parser/ParseException;
        }
    .end annotation

    .line 1
    sget-object v0, Lnet/minidev/json/JSONValue;->defaultReader:Lnet/minidev/json/writer/JsonReader;

    iget-object v0, v0, Lnet/minidev/json/writer/JsonReader;->DEFAULT:Lnet/minidev/json/writer/JsonReaderI;

    invoke-virtual {p0, p1, v0}, Lnet/minidev/json/parser/d;->v(Ljava/io/Reader;Lnet/minidev/json/writer/JsonReaderI;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public v(Ljava/io/Reader;Lnet/minidev/json/writer/JsonReaderI;)Ljava/lang/Object;
    .locals 1
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/minidev/json/parser/ParseException;
        }
    .end annotation

    .line 1
    iget-object v0, p2, Lnet/minidev/json/writer/JsonReaderI;->base:Lnet/minidev/json/writer/JsonReader;

    iput-object v0, p0, Lnet/minidev/json/parser/JSONParserBase;->g:Lnet/minidev/json/writer/JsonReader;

    .line 2
    iput-object p1, p0, Lnet/minidev/json/parser/d;->x:Ljava/io/Reader;

    .line 3
    invoke-super {p0, p2}, Lnet/minidev/json/parser/JSONParserBase;->d(Lnet/minidev/json/writer/JsonReaderI;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
