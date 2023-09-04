.class public Lbr/com/topaz/o/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lbr/com/topaz/o/k;

.field private final b:Lbr/com/topaz/heartbeat/utils/OFDException;

.field private final c:Lbr/com/topaz/u0/r;


# direct methods
.method public constructor <init>(Lbr/com/topaz/o/k;Lbr/com/topaz/heartbeat/utils/OFDException;Lbr/com/topaz/u0/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/o/f;->a:Lbr/com/topaz/o/k;

    iput-object p2, p0, Lbr/com/topaz/o/f;->b:Lbr/com/topaz/heartbeat/utils/OFDException;

    iput-object p3, p0, Lbr/com/topaz/o/f;->c:Lbr/com/topaz/u0/r;

    return-void
.end method

.method private a(Lbr/com/topaz/o/g;)I
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lbr/com/topaz/o/f$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    return v0

    :cond_0
    const/16 p1, 0xbd

    return p1

    :cond_1
    const/16 p1, 0xbb

    return p1

    :cond_2
    const/16 p1, 0xbc

    return p1

    :catch_0
    move-exception p1

    iget-object v1, p0, Lbr/com/topaz/o/f;->b:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v2, "176"

    invoke-virtual {v1, p1, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    return v0
.end method


# virtual methods
.method public a(Lbr/com/topaz/o/c;)Lbr/com/topaz/o/h;
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lbr/com/topaz/o/c;->g()Lbr/com/topaz/o/g;

    move-result-object v1

    invoke-direct {p0, v1}, Lbr/com/topaz/o/f;->a(Lbr/com/topaz/o/g;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lbr/com/topaz/o/f;->b:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v1, "174"

    invoke-virtual {p1, v1}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/String;)V

    return-object v0

    :cond_0
    iget-object v2, p0, Lbr/com/topaz/o/f;->c:Lbr/com/topaz/u0/r;

    invoke-interface {v2, v1}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lbr/com/topaz/o/c;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lbr/com/topaz/o/c;->d()Lbr/com/topaz/o/e;

    move-result-object v1

    invoke-virtual {v1}, Lbr/com/topaz/o/e;->a()I

    move-result v6

    invoke-virtual {p1}, Lbr/com/topaz/o/c;->a()I

    move-result v7

    invoke-virtual {p1}, Lbr/com/topaz/o/c;->b()I

    move-result v8

    iget-object v3, p0, Lbr/com/topaz/o/f;->a:Lbr/com/topaz/o/k;

    invoke-interface/range {v3 .. v8}, Lbr/com/topaz/o/k;->a(Ljava/lang/String;Ljava/lang/String;III)Lbr/com/topaz/o/k$a;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v2, 0x1

    invoke-interface {v1}, Lbr/com/topaz/o/k$a;->a()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x2

    const/4 v7, 0x2

    goto :goto_0

    :cond_1
    const/4 v7, 0x1

    :goto_0
    new-instance v9, Lbr/com/topaz/o/h;

    invoke-virtual {p1}, Lbr/com/topaz/o/c;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lbr/com/topaz/o/k$a;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lbr/com/topaz/o/c;->e()I

    move-result v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lbr/com/topaz/o/h;-><init>(Ljava/lang/String;JLjava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v9

    :catch_0
    move-exception p1

    iget-object v1, p0, Lbr/com/topaz/o/f;->b:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v2, "172"

    invoke-virtual {v1, p1, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    return-object v0
.end method
