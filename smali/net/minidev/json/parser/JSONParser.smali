.class public Lnet/minidev/json/parser/JSONParser;
.super Ljava/lang/Object;
.source "JSONParser.java"


# static fields
.field public static final ACCEPT_LEADING_ZERO:I = 0x20

.field public static final ACCEPT_NAN:I = 0x4

.field public static final ACCEPT_NON_QUOTE:I = 0x2

.field public static final ACCEPT_SIMPLE_QUOTE:I = 0x1

.field public static final ACCEPT_TAILLING_DATA:I = 0x100

.field public static final ACCEPT_TAILLING_SPACE:I = 0x200

.field public static final ACCEPT_USELESS_COMMA:I = 0x40

.field public static DEFAULT_PERMISSIVE_MODE:I = 0x0

.field public static final IGNORE_CONTROL_CHAR:I = 0x8

.field public static final MODE_JSON_SIMPLE:I = 0x7c0

.field public static final MODE_PERMISSIVE:I = -0x1

.field public static final MODE_RFC4627:I = 0x290

.field public static final MODE_STRICTEST:I = 0x490

.field public static final REJECT_127_CHAR:I = 0x400

.field public static final USE_HI_PRECISION_FLOAT:I = 0x80

.field public static final USE_INTEGER_STORAGE:I = 0x10


# instance fields
.field private a:I

.field private b:Lnet/minidev/json/parser/b;

.field private c:Lnet/minidev/json/parser/a;

.field private d:Lnet/minidev/json/parser/d;

.field private e:Lnet/minidev/json/parser/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "JSON_SMART_SIMPLE"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7c0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 2
    :goto_0
    sput v0, Lnet/minidev/json/parser/JSONParser;->DEFAULT_PERMISSIVE_MODE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Lnet/minidev/json/parser/JSONParser;->DEFAULT_PERMISSIVE_MODE:I

    iput v0, p0, Lnet/minidev/json/parser/JSONParser;->a:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lnet/minidev/json/parser/JSONParser;->a:I

    return-void
.end method

.method private a()Lnet/minidev/json/parser/b;
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/minidev/json/parser/JSONParser;->b:Lnet/minidev/json/parser/b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lnet/minidev/json/parser/b;

    iget v1, p0, Lnet/minidev/json/parser/JSONParser;->a:I

    invoke-direct {v0, v1}, Lnet/minidev/json/parser/b;-><init>(I)V

    iput-object v0, p0, Lnet/minidev/json/parser/JSONParser;->b:Lnet/minidev/json/parser/b;

    .line 3
    :cond_0
    iget-object v0, p0, Lnet/minidev/json/parser/JSONParser;->b:Lnet/minidev/json/parser/b;

    return-object v0
.end method

.method private b()Lnet/minidev/json/parser/a;
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/minidev/json/parser/JSONParser;->c:Lnet/minidev/json/parser/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lnet/minidev/json/parser/a;

    iget v1, p0, Lnet/minidev/json/parser/JSONParser;->a:I

    invoke-direct {v0, v1}, Lnet/minidev/json/parser/a;-><init>(I)V

    iput-object v0, p0, Lnet/minidev/json/parser/JSONParser;->c:Lnet/minidev/json/parser/a;

    .line 3
    :cond_0
    iget-object v0, p0, Lnet/minidev/json/parser/JSONParser;->c:Lnet/minidev/json/parser/a;

    return-object v0
.end method

.method private c()Lnet/minidev/json/parser/d;
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/minidev/json/parser/JSONParser;->d:Lnet/minidev/json/parser/d;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lnet/minidev/json/parser/d;

    iget v1, p0, Lnet/minidev/json/parser/JSONParser;->a:I

    invoke-direct {v0, v1}, Lnet/minidev/json/parser/d;-><init>(I)V

    iput-object v0, p0, Lnet/minidev/json/parser/JSONParser;->d:Lnet/minidev/json/parser/d;

    .line 3
    :cond_0
    iget-object v0, p0, Lnet/minidev/json/parser/JSONParser;->d:Lnet/minidev/json/parser/d;

    return-object v0
.end method

.method private d()Lnet/minidev/json/parser/f;
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/minidev/json/parser/JSONParser;->e:Lnet/minidev/json/parser/f;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lnet/minidev/json/parser/f;

    iget v1, p0, Lnet/minidev/json/parser/JSONParser;->a:I

    invoke-direct {v0, v1}, Lnet/minidev/json/parser/f;-><init>(I)V

    iput-object v0, p0, Lnet/minidev/json/parser/JSONParser;->e:Lnet/minidev/json/parser/f;

    .line 3
    :cond_0
    iget-object v0, p0, Lnet/minidev/json/parser/JSONParser;->e:Lnet/minidev/json/parser/f;

    return-object v0
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/minidev/json/parser/ParseException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lnet/minidev/json/parser/JSONParser;->a()Lnet/minidev/json/parser/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/minidev/json/parser/b;->w(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/minidev/json/parser/ParseException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Lnet/minidev/json/parser/JSONParser;->a()Lnet/minidev/json/parser/b;

    move-result-object v0

    sget-object v1, Lnet/minidev/json/JSONValue;->defaultReader:Lnet/minidev/json/writer/JsonReader;

    invoke-virtual {v1, p2}, Lnet/minidev/json/writer/JsonReader;->getMapper(Ljava/lang/Class;)Lnet/minidev/json/writer/JsonReaderI;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lnet/minidev/json/parser/b;->x(Ljava/io/InputStream;Lnet/minidev/json/writer/JsonReaderI;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/io/InputStream;Lnet/minidev/json/writer/JsonReaderI;)Ljava/lang/Object;
    .locals 1
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

    .line 5
    invoke-direct {p0}, Lnet/minidev/json/parser/JSONParser;->a()Lnet/minidev/json/parser/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/minidev/json/parser/b;->x(Ljava/io/InputStream;Lnet/minidev/json/writer/JsonReaderI;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/minidev/json/parser/ParseException;
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Lnet/minidev/json/parser/JSONParser;->c()Lnet/minidev/json/parser/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/minidev/json/parser/d;->u(Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/minidev/json/parser/ParseException;
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Lnet/minidev/json/parser/JSONParser;->c()Lnet/minidev/json/parser/d;

    move-result-object v0

    sget-object v1, Lnet/minidev/json/JSONValue;->defaultReader:Lnet/minidev/json/writer/JsonReader;

    invoke-virtual {v1, p2}, Lnet/minidev/json/writer/JsonReader;->getMapper(Ljava/lang/Class;)Lnet/minidev/json/writer/JsonReaderI;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lnet/minidev/json/parser/d;->v(Ljava/io/Reader;Lnet/minidev/json/writer/JsonReaderI;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/io/Reader;Lnet/minidev/json/writer/JsonReaderI;)Ljava/lang/Object;
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

    .line 8
    invoke-direct {p0}, Lnet/minidev/json/parser/JSONParser;->c()Lnet/minidev/json/parser/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/minidev/json/parser/d;->v(Ljava/io/Reader;Lnet/minidev/json/writer/JsonReaderI;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/minidev/json/parser/ParseException;
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Lnet/minidev/json/parser/JSONParser;->d()Lnet/minidev/json/parser/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/minidev/json/parser/f;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
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

    .line 12
    invoke-direct {p0}, Lnet/minidev/json/parser/JSONParser;->d()Lnet/minidev/json/parser/f;

    move-result-object v0

    sget-object v1, Lnet/minidev/json/JSONValue;->defaultReader:Lnet/minidev/json/writer/JsonReader;

    invoke-virtual {v1, p2}, Lnet/minidev/json/writer/JsonReader;->getMapper(Ljava/lang/Class;)Lnet/minidev/json/writer/JsonReaderI;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lnet/minidev/json/parser/f;->y(Ljava/lang/String;Lnet/minidev/json/writer/JsonReaderI;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/lang/String;Lnet/minidev/json/writer/JsonReaderI;)Ljava/lang/Object;
    .locals 1
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/minidev/json/parser/ParseException;
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Lnet/minidev/json/parser/JSONParser;->d()Lnet/minidev/json/parser/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/minidev/json/parser/f;->y(Ljava/lang/String;Lnet/minidev/json/writer/JsonReaderI;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public parse([B)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/minidev/json/parser/ParseException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lnet/minidev/json/parser/JSONParser;->b()Lnet/minidev/json/parser/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/minidev/json/parser/a;->x([B)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public parse([BLjava/lang/Class;)Ljava/lang/Object;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/minidev/json/parser/ParseException;
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lnet/minidev/json/parser/JSONParser;->b()Lnet/minidev/json/parser/a;

    move-result-object v0

    sget-object v1, Lnet/minidev/json/JSONValue;->defaultReader:Lnet/minidev/json/writer/JsonReader;

    invoke-virtual {v1, p2}, Lnet/minidev/json/writer/JsonReader;->getMapper(Ljava/lang/Class;)Lnet/minidev/json/writer/JsonReaderI;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lnet/minidev/json/parser/a;->y([BLnet/minidev/json/writer/JsonReaderI;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public parse([BLnet/minidev/json/writer/JsonReaderI;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Lnet/minidev/json/writer/JsonReaderI<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/minidev/json/parser/ParseException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lnet/minidev/json/parser/JSONParser;->b()Lnet/minidev/json/parser/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/minidev/json/parser/a;->y([BLnet/minidev/json/writer/JsonReaderI;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
