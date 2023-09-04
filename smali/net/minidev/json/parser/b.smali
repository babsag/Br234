.class Lnet/minidev/json/parser/b;
.super Lnet/minidev/json/parser/d;
.source "JSONParserInputStream.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lnet/minidev/json/parser/d;-><init>(I)V

    return-void
.end method


# virtual methods
.method public w(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/minidev/json/parser/ParseException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "utf8"

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, v0}, Lnet/minidev/json/parser/d;->u(Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public x(Ljava/io/InputStream;Lnet/minidev/json/writer/JsonReaderI;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Lnet/minidev/json/writer/JsonReaderI<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/minidev/json/parser/ParseException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "utf8"

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, v0, p2}, Lnet/minidev/json/parser/d;->v(Ljava/io/Reader;Lnet/minidev/json/writer/JsonReaderI;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
