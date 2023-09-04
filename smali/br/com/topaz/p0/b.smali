.class public Lbr/com/topaz/p0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/p0/a;


# instance fields
.field private final a:Lbr/com/topaz/l/f0;

.field private final b:Lbr/com/topaz/w0/b;

.field private final c:Lbr/com/topaz/heartbeat/utils/OFDException;

.field private final d:Lbr/com/topaz/u0/c;

.field private final e:Lbr/com/topaz/u0/a;

.field private final f:Lbr/com/topaz/l/e0;


# direct methods
.method public constructor <init>(Lbr/com/topaz/heartbeat/crypto/MidCrypt;Lbr/com/topaz/u0/a;Lbr/com/topaz/l/f0;Lbr/com/topaz/w0/b;Lbr/com/topaz/heartbeat/utils/OFDException;Lbr/com/topaz/l/e0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbr/com/topaz/u0/c;

    invoke-direct {v0, p1, p2}, Lbr/com/topaz/u0/c;-><init>(Lbr/com/topaz/heartbeat/crypto/MidCrypt;Lbr/com/topaz/u0/a;)V

    iput-object v0, p0, Lbr/com/topaz/p0/b;->d:Lbr/com/topaz/u0/c;

    iput-object p2, p0, Lbr/com/topaz/p0/b;->e:Lbr/com/topaz/u0/a;

    iput-object p3, p0, Lbr/com/topaz/p0/b;->a:Lbr/com/topaz/l/f0;

    iput-object p4, p0, Lbr/com/topaz/p0/b;->b:Lbr/com/topaz/w0/b;

    iput-object p5, p0, Lbr/com/topaz/p0/b;->c:Lbr/com/topaz/heartbeat/utils/OFDException;

    iput-object p6, p0, Lbr/com/topaz/p0/b;->f:Lbr/com/topaz/l/e0;

    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "1_|_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "_|_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lbr/com/topaz/p0/b;->b:Lbr/com/topaz/w0/b;

    invoke-interface {v1}, Lbr/com/topaz/w0/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbr/com/topaz/p0/b;->b:Lbr/com/topaz/w0/b;

    invoke-interface {v1}, Lbr/com/topaz/w0/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lbr/com/topaz/p0/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/p0/b;->d:Lbr/com/topaz/u0/c;

    invoke-virtual {v0, p1, p2}, Lbr/com/topaz/u0/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b()Ljava/lang/String;
    .locals 4

    new-instance v0, Lbr/com/topaz/u0/l;

    iget-object v1, p0, Lbr/com/topaz/p0/b;->f:Lbr/com/topaz/l/e0;

    iget-object v2, p0, Lbr/com/topaz/p0/b;->c:Lbr/com/topaz/heartbeat/utils/OFDException;

    invoke-direct {v0, v1, v2}, Lbr/com/topaz/u0/l;-><init>(Lbr/com/topaz/l/e0;Lbr/com/topaz/heartbeat/utils/OFDException;)V

    invoke-virtual {v0}, Lbr/com/topaz/u0/l;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-1_|_-1_|_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4

    invoke-direct {p0}, Lbr/com/topaz/p0/b;->b()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lbr/com/topaz/p0/b;->a:Lbr/com/topaz/l/f0;

    invoke-interface {v1}, Lbr/com/topaz/l/f0;->p()Lbr/com/topaz/l/g;

    move-result-object v1

    invoke-virtual {v1}, Lbr/com/topaz/l/g;->S()Lbr/com/topaz/p0/c;

    move-result-object v1

    invoke-virtual {v1}, Lbr/com/topaz/p0/c;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lbr/com/topaz/p0/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lbr/com/topaz/p0/c;->b()I

    move-result v3

    invoke-direct {p0, v3}, Lbr/com/topaz/p0/b;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lbr/com/topaz/p0/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lbr/com/topaz/p0/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_0
    iget-object v2, p0, Lbr/com/topaz/p0/b;->c:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v3, "106"

    invoke-virtual {v2, v1, v3}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_0
    :goto_1
    iget-object v1, p0, Lbr/com/topaz/p0/b;->e:Lbr/com/topaz/u0/a;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lbr/com/topaz/u0/a;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
