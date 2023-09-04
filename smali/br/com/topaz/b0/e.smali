.class public Lbr/com/topaz/b0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/b0/b$a;
.implements Lbr/com/topaz/r/b$a;


# instance fields
.field private a:Lbr/com/topaz/l/f0;

.field private b:Landroid/content/Context;

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lbr/com/topaz/t0/b;

.field private e:Lbr/com/topaz/heartbeat/utils/OFDException;

.field private final f:Lbr/com/topaz/l/e0;

.field private g:Lbr/com/topaz/b0/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbr/com/topaz/l/f0;Lbr/com/topaz/t0/b;Lbr/com/topaz/heartbeat/utils/OFDException;Lbr/com/topaz/l/e0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/b0/e;->b:Landroid/content/Context;

    iput-object p2, p0, Lbr/com/topaz/b0/e;->a:Lbr/com/topaz/l/f0;

    iput-object p3, p0, Lbr/com/topaz/b0/e;->d:Lbr/com/topaz/t0/b;

    iput-object p4, p0, Lbr/com/topaz/b0/e;->e:Lbr/com/topaz/heartbeat/utils/OFDException;

    iput-object p5, p0, Lbr/com/topaz/b0/e;->f:Lbr/com/topaz/l/e0;

    invoke-direct {p0}, Lbr/com/topaz/b0/e;->a()V

    new-instance p1, Lbr/com/topaz/b0/e$a;

    invoke-direct {p1, p0}, Lbr/com/topaz/b0/e$a;-><init>(Lbr/com/topaz/b0/e;)V

    iput-object p1, p0, Lbr/com/topaz/b0/e;->c:Ljava/util/HashMap;

    return-void
.end method

.method private a()V
    .locals 10

    new-instance v2, Lbr/com/topaz/b0/d;

    invoke-direct {v2}, Lbr/com/topaz/b0/d;-><init>()V

    invoke-static {}, Lbr/com/topaz/s/c;->a()Lbr/com/topaz/s/a;

    move-result-object v1

    new-instance v9, Lbr/com/topaz/b0/b;

    new-instance v3, Lbr/com/topaz/d0/a;

    iget-object v0, p0, Lbr/com/topaz/b0/e;->b:Landroid/content/Context;

    iget-object v4, p0, Lbr/com/topaz/b0/e;->e:Lbr/com/topaz/heartbeat/utils/OFDException;

    invoke-direct {v3, v0, v4}, Lbr/com/topaz/d0/a;-><init>(Landroid/content/Context;Lbr/com/topaz/heartbeat/utils/OFDException;)V

    iget-object v4, p0, Lbr/com/topaz/b0/e;->a:Lbr/com/topaz/l/f0;

    iget-object v5, p0, Lbr/com/topaz/b0/e;->d:Lbr/com/topaz/t0/b;

    new-instance v6, Lbr/com/topaz/u0/p;

    iget-object v0, p0, Lbr/com/topaz/b0/e;->e:Lbr/com/topaz/heartbeat/utils/OFDException;

    invoke-direct {v6, v0}, Lbr/com/topaz/u0/p;-><init>(Lbr/com/topaz/heartbeat/utils/OFDException;)V

    iget-object v7, p0, Lbr/com/topaz/b0/e;->f:Lbr/com/topaz/l/e0;

    iget-object v8, p0, Lbr/com/topaz/b0/e;->e:Lbr/com/topaz/heartbeat/utils/OFDException;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lbr/com/topaz/b0/b;-><init>(Lbr/com/topaz/s/a;Lbr/com/topaz/b0/d;Lbr/com/topaz/d0/a;Lbr/com/topaz/l/f0;Lbr/com/topaz/t0/b;Lbr/com/topaz/u0/p;Lbr/com/topaz/l/e0;Lbr/com/topaz/heartbeat/utils/OFDException;)V

    iput-object v9, p0, Lbr/com/topaz/b0/e;->g:Lbr/com/topaz/b0/b;

    invoke-virtual {v9, p0}, Lbr/com/topaz/b0/b;->a(Lbr/com/topaz/b0/b$a;)V

    return-void
.end method


# virtual methods
.method public a(Lbr/com/topaz/b0/d;)V
    .locals 3

    new-instance v0, Lbr/com/topaz/l/l;

    invoke-direct {v0}, Lbr/com/topaz/l/l;-><init>()V

    const-string v1, "6"

    const-string v2, "PI"

    invoke-virtual {v0, v1, v2}, Lbr/com/topaz/l/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "7"

    invoke-virtual {v0, v1, p1}, Lbr/com/topaz/l/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lbr/com/topaz/b0/e;->b:Landroid/content/Context;

    invoke-static {p1, v0}, Lbr/com/topaz/r/a;->a(Landroid/content/Context;Lbr/com/topaz/l/l;)Lbr/com/topaz/r/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lbr/com/topaz/r/b;->a(Lbr/com/topaz/r/b$a;)V

    invoke-virtual {p1}, Lbr/com/topaz/r/b;->run()V

    return-void
.end method

.method public b()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/b0/e;->a:Lbr/com/topaz/l/f0;

    invoke-interface {v0}, Lbr/com/topaz/l/f0;->p()Lbr/com/topaz/l/g;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/l/g;->E()Lbr/com/topaz/b0/c;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/b0/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbr/com/topaz/b0/e;->g:Lbr/com/topaz/b0/b;

    invoke-virtual {v0}, Lbr/com/topaz/s0/a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lbr/com/topaz/b0/e;->e:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v2, "072"

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public b(Lbr/com/topaz/l/l;)V
    .locals 3

    invoke-static {}, Lbr/com/topaz/s/c;->a()Lbr/com/topaz/s/a;

    move-result-object v0

    iget-object v1, p0, Lbr/com/topaz/b0/e;->b:Landroid/content/Context;

    iget-object v2, p0, Lbr/com/topaz/b0/e;->c:Ljava/util/HashMap;

    invoke-static {v1, p1, v2}, Lbr/com/topaz/r/a;->a(Landroid/content/Context;Lbr/com/topaz/l/l;Ljava/util/HashMap;)Lbr/com/topaz/r/k;

    move-result-object p1

    new-instance v1, Lbr/com/topaz/b0/f;

    iget-object v2, p0, Lbr/com/topaz/b0/e;->a:Lbr/com/topaz/l/f0;

    invoke-direct {v1, v0, v2, p1}, Lbr/com/topaz/b0/f;-><init>(Lbr/com/topaz/s/a;Lbr/com/topaz/l/f0;Lbr/com/topaz/r/k;)V

    invoke-virtual {v1}, Lbr/com/topaz/b0/f;->run()V

    return-void
.end method

.method public c()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/b0/e;->a:Lbr/com/topaz/l/f0;

    invoke-interface {v0}, Lbr/com/topaz/l/f0;->p()Lbr/com/topaz/l/g;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/l/g;->E()Lbr/com/topaz/b0/c;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/b0/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbr/com/topaz/b0/e;->g:Lbr/com/topaz/b0/b;

    invoke-virtual {v0}, Lbr/com/topaz/b0/b;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lbr/com/topaz/b0/e;->e:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v2, "072"

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
