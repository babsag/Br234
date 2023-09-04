.class public Lbr/com/topaz/h0/b;
.super Lbr/com/topaz/s0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbr/com/topaz/h0/b$b;
    }
.end annotation


# instance fields
.field private b:Lbr/com/topaz/h0/b$b;

.field private c:Lbr/com/topaz/h0/a;

.field private d:Lbr/com/topaz/l/f0;

.field private e:Lbr/com/topaz/u0/k;

.field private f:Lbr/com/topaz/u0/f;

.field private g:Lbr/com/topaz/m/a;

.field private h:Lbr/com/topaz/heartbeat/utils/OFDException;


# direct methods
.method public constructor <init>(Lbr/com/topaz/s/a;Lbr/com/topaz/h0/b$b;Lbr/com/topaz/h0/a;Lbr/com/topaz/l/f0;Lbr/com/topaz/u0/k;Lbr/com/topaz/u0/f;Lbr/com/topaz/m/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lbr/com/topaz/s0/a;-><init>(Lbr/com/topaz/s/a;)V

    iput-object p2, p0, Lbr/com/topaz/h0/b;->b:Lbr/com/topaz/h0/b$b;

    iput-object p3, p0, Lbr/com/topaz/h0/b;->c:Lbr/com/topaz/h0/a;

    iput-object p4, p0, Lbr/com/topaz/h0/b;->d:Lbr/com/topaz/l/f0;

    iput-object p5, p0, Lbr/com/topaz/h0/b;->e:Lbr/com/topaz/u0/k;

    iput-object p6, p0, Lbr/com/topaz/h0/b;->f:Lbr/com/topaz/u0/f;

    iput-object p7, p0, Lbr/com/topaz/h0/b;->g:Lbr/com/topaz/m/a;

    new-instance p1, Lbr/com/topaz/heartbeat/utils/OFDException;

    iget-object p2, p0, Lbr/com/topaz/h0/b;->d:Lbr/com/topaz/l/f0;

    invoke-direct {p1, p2}, Lbr/com/topaz/heartbeat/utils/OFDException;-><init>(Lbr/com/topaz/l/f0;)V

    iput-object p1, p0, Lbr/com/topaz/h0/b;->h:Lbr/com/topaz/heartbeat/utils/OFDException;

    return-void
.end method

.method static synthetic a(Lbr/com/topaz/h0/b;)Lbr/com/topaz/m/a;
    .locals 0

    iget-object p0, p0, Lbr/com/topaz/h0/b;->g:Lbr/com/topaz/m/a;

    return-object p0
.end method

.method static synthetic b(Lbr/com/topaz/h0/b;)Lbr/com/topaz/h0/b$b;
    .locals 0

    iget-object p0, p0, Lbr/com/topaz/h0/b;->b:Lbr/com/topaz/h0/b$b;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/h0/b;->d:Lbr/com/topaz/l/f0;

    invoke-interface {v0}, Lbr/com/topaz/l/f0;->p()Lbr/com/topaz/l/g;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/l/g;->h0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbr/com/topaz/h0/b;->e:Lbr/com/topaz/u0/k;

    invoke-virtual {v0}, Lbr/com/topaz/u0/k;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbr/com/topaz/h0/b;->d:Lbr/com/topaz/l/f0;

    invoke-interface {v0}, Lbr/com/topaz/l/f0;->p()Lbr/com/topaz/l/g;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/l/g;->K()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lbr/com/topaz/h0/b;->f:Lbr/com/topaz/u0/f;

    invoke-virtual {v2, v1}, Lbr/com/topaz/u0/f;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lbr/com/topaz/h0/b;->c:Lbr/com/topaz/h0/a;

    new-instance v3, Lbr/com/topaz/h0/b$a;

    invoke-direct {v3, p0}, Lbr/com/topaz/h0/b$a;-><init>(Lbr/com/topaz/h0/b;)V

    invoke-virtual {v2, v1, v3}, Lbr/com/topaz/h0/a;->a(Ljava/lang/String;Lbr/com/topaz/h0/a$b;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lbr/com/topaz/h0/b;->c:Lbr/com/topaz/h0/a;

    invoke-virtual {v0}, Lbr/com/topaz/h0/a;->b()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    iget-object v1, p0, Lbr/com/topaz/h0/b;->h:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v2, "012"

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method
