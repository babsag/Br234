.class public Lbr/com/topaz/r/j;
.super Lbr/com/topaz/s0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbr/com/topaz/r/j$b;
    }
.end annotation


# instance fields
.field private b:Lbr/com/topaz/l/h;

.field private c:Lbr/com/topaz/r/j$b;

.field private d:Lbr/com/topaz/w0/b;

.field private e:Lbr/com/topaz/f0/b;

.field private f:Lbr/com/topaz/l/f0;

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lbr/com/topaz/m/d;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lbr/com/topaz/m/e;

.field private i:Lbr/com/topaz/n/a;

.field private j:Lbr/com/topaz/m0/d;

.field private k:Lbr/com/topaz/heartbeat/crypto/MidCrypt;


# direct methods
.method public constructor <init>(Lbr/com/topaz/s/a;Lbr/com/topaz/l/h;Lbr/com/topaz/w0/b;Lbr/com/topaz/f0/b;Lbr/com/topaz/l/f0;Ljava/util/Map;Lbr/com/topaz/m/e;Lbr/com/topaz/n/a;Lbr/com/topaz/m0/d;Lbr/com/topaz/heartbeat/crypto/MidCrypt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbr/com/topaz/s/a;",
            "Lbr/com/topaz/l/h;",
            "Lbr/com/topaz/w0/b;",
            "Lbr/com/topaz/f0/b;",
            "Lbr/com/topaz/l/f0;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lbr/com/topaz/m/d;",
            ">;",
            "Lbr/com/topaz/m/e;",
            "Lbr/com/topaz/n/a;",
            "Lbr/com/topaz/m0/d;",
            "Lbr/com/topaz/heartbeat/crypto/MidCrypt;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lbr/com/topaz/s0/a;-><init>(Lbr/com/topaz/s/a;)V

    iput-object p2, p0, Lbr/com/topaz/r/j;->b:Lbr/com/topaz/l/h;

    iput-object p3, p0, Lbr/com/topaz/r/j;->d:Lbr/com/topaz/w0/b;

    iput-object p4, p0, Lbr/com/topaz/r/j;->e:Lbr/com/topaz/f0/b;

    iput-object p5, p0, Lbr/com/topaz/r/j;->f:Lbr/com/topaz/l/f0;

    iput-object p6, p0, Lbr/com/topaz/r/j;->g:Ljava/util/Map;

    iput-object p7, p0, Lbr/com/topaz/r/j;->h:Lbr/com/topaz/m/e;

    iput-object p8, p0, Lbr/com/topaz/r/j;->i:Lbr/com/topaz/n/a;

    iput-object p9, p0, Lbr/com/topaz/r/j;->j:Lbr/com/topaz/m0/d;

    iput-object p10, p0, Lbr/com/topaz/r/j;->k:Lbr/com/topaz/heartbeat/crypto/MidCrypt;

    return-void
.end method

.method static synthetic a(Lbr/com/topaz/r/j;)Lbr/com/topaz/r/j$b;
    .locals 0

    iget-object p0, p0, Lbr/com/topaz/r/j;->c:Lbr/com/topaz/r/j$b;

    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/r/j;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbr/com/topaz/m/d;

    invoke-interface {p1}, Lbr/com/topaz/m/d;->a()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lbr/com/topaz/heartbeat/utils/OFDException;

    iget-object v1, p0, Lbr/com/topaz/r/j;->f:Lbr/com/topaz/l/f0;

    invoke-direct {v0, v1}, Lbr/com/topaz/heartbeat/utils/OFDException;-><init>(Lbr/com/topaz/l/f0;)V

    const-string v1, "017"

    invoke-virtual {v0, p1, v1}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    const-string p1, ""

    return-object p1
.end method

.method private c()Z
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/r/j;->f:Lbr/com/topaz/l/f0;

    invoke-interface {v0}, Lbr/com/topaz/l/f0;->p()Lbr/com/topaz/l/g;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/l/g;->M()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbr/com/topaz/r/j;->j:Lbr/com/topaz/m0/d;

    invoke-interface {v0}, Lbr/com/topaz/m0/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public a(Lbr/com/topaz/r/j$b;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/r/j;->c:Lbr/com/topaz/r/j$b;

    return-void
.end method

.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/r/j;->f:Lbr/com/topaz/l/f0;

    invoke-interface {v0}, Lbr/com/topaz/l/f0;->p()Lbr/com/topaz/l/g;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/l/g;->c0()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lbr/com/topaz/r/j;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbr/com/topaz/r/j;->b:Lbr/com/topaz/l/h;

    iget-object v2, p0, Lbr/com/topaz/r/j;->d:Lbr/com/topaz/w0/b;

    invoke-interface {v2}, Lbr/com/topaz/w0/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbr/com/topaz/l/h;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lbr/com/topaz/r/j;->b:Lbr/com/topaz/l/h;

    iget-object v2, p0, Lbr/com/topaz/r/j;->d:Lbr/com/topaz/w0/b;

    invoke-interface {v2}, Lbr/com/topaz/w0/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbr/com/topaz/l/h;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lbr/com/topaz/r/j;->b:Lbr/com/topaz/l/h;

    const-string v2, "M4.6.0.1074349"

    invoke-virtual {v1, v2}, Lbr/com/topaz/l/h;->i(Ljava/lang/String;)V

    iget-object v1, p0, Lbr/com/topaz/r/j;->b:Lbr/com/topaz/l/h;

    const-string v2, "30"

    invoke-virtual {v1, v2}, Lbr/com/topaz/l/h;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lbr/com/topaz/r/j;->b:Lbr/com/topaz/l/h;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "A"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lbr/com/topaz/r/j;->h:Lbr/com/topaz/m/e;

    invoke-virtual {v3}, Lbr/com/topaz/m/e;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbr/com/topaz/l/h;->h(Ljava/lang/String;)V

    iget-object v1, p0, Lbr/com/topaz/r/j;->b:Lbr/com/topaz/l/h;

    iget-object v2, p0, Lbr/com/topaz/r/j;->h:Lbr/com/topaz/m/e;

    invoke-virtual {v2}, Lbr/com/topaz/m/e;->u()Z

    move-result v2

    invoke-virtual {v1, v2}, Lbr/com/topaz/l/h;->b(Z)V

    iget-object v1, p0, Lbr/com/topaz/r/j;->b:Lbr/com/topaz/l/h;

    const-string v2, "root_path"

    invoke-direct {p0, v2}, Lbr/com/topaz/r/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lbr/com/topaz/l/h;->a(Z)V

    iget-object v1, p0, Lbr/com/topaz/r/j;->b:Lbr/com/topaz/l/h;

    iget-object v2, p0, Lbr/com/topaz/r/j;->i:Lbr/com/topaz/n/a;

    invoke-interface {v2}, Lbr/com/topaz/n/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbr/com/topaz/l/h;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lbr/com/topaz/r/j;->b:Lbr/com/topaz/l/h;

    iget-object v2, p0, Lbr/com/topaz/r/j;->i:Lbr/com/topaz/n/a;

    invoke-interface {v2}, Lbr/com/topaz/n/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbr/com/topaz/l/h;->g(Ljava/lang/String;)V

    iget-object v1, p0, Lbr/com/topaz/r/j;->k:Lbr/com/topaz/heartbeat/crypto/MidCrypt;

    iget-object v2, p0, Lbr/com/topaz/r/j;->b:Lbr/com/topaz/l/h;

    invoke-virtual {v2}, Lbr/com/topaz/l/h;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lbr/com/topaz/heartbeat/crypto/MidCrypt;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbr/com/topaz/r/j;->e:Lbr/com/topaz/f0/b;

    invoke-virtual {v0}, Lbr/com/topaz/l/g;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lbr/com/topaz/l/g;->b0()Z

    move-result v0

    new-instance v4, Lbr/com/topaz/r/j$a;

    invoke-direct {v4, p0}, Lbr/com/topaz/r/j$a;-><init>(Lbr/com/topaz/r/j;)V

    invoke-interface {v2, v3, v1, v0, v4}, Lbr/com/topaz/f0/b;->a(Ljava/lang/String;Ljava/lang/String;ZLbr/com/topaz/f0/b$a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    new-instance v1, Lbr/com/topaz/heartbeat/utils/OFDException;

    iget-object v2, p0, Lbr/com/topaz/r/j;->f:Lbr/com/topaz/l/f0;

    invoke-direct {v1, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;-><init>(Lbr/com/topaz/l/f0;)V

    const-string v2, "017"

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void
.end method
