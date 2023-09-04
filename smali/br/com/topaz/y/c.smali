.class public Lbr/com/topaz/y/c;
.super Lbr/com/topaz/s0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbr/com/topaz/y/c$a;
    }
.end annotation


# instance fields
.field private b:Lbr/com/topaz/d0/c;

.field private c:Lbr/com/topaz/d0/a;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbr/com/topaz/c0/g;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lbr/com/topaz/heartbeat/utils/OFDException;

.field private f:Lbr/com/topaz/u0/r;

.field private g:Lbr/com/topaz/y/c$a;

.field private h:Lbr/com/topaz/c0/d;

.field private i:Lbr/com/topaz/l/f0;


# direct methods
.method public constructor <init>(Lbr/com/topaz/s/a;Lbr/com/topaz/d0/c;Lbr/com/topaz/d0/a;Lbr/com/topaz/heartbeat/utils/OFDException;Lbr/com/topaz/u0/r;Lbr/com/topaz/c0/d;Lbr/com/topaz/l/f0;)V
    .locals 0

    invoke-direct {p0, p1}, Lbr/com/topaz/s0/a;-><init>(Lbr/com/topaz/s/a;)V

    iput-object p2, p0, Lbr/com/topaz/y/c;->b:Lbr/com/topaz/d0/c;

    iput-object p3, p0, Lbr/com/topaz/y/c;->c:Lbr/com/topaz/d0/a;

    iput-object p4, p0, Lbr/com/topaz/y/c;->e:Lbr/com/topaz/heartbeat/utils/OFDException;

    iput-object p5, p0, Lbr/com/topaz/y/c;->f:Lbr/com/topaz/u0/r;

    iput-object p6, p0, Lbr/com/topaz/y/c;->h:Lbr/com/topaz/c0/d;

    iput-object p7, p0, Lbr/com/topaz/y/c;->i:Lbr/com/topaz/l/f0;

    return-void
.end method

.method private a(Lbr/com/topaz/c0/g;)V
    .locals 3

    new-instance v0, Lbr/com/topaz/l/l;

    invoke-direct {v0}, Lbr/com/topaz/l/l;-><init>()V

    invoke-virtual {p1}, Lbr/com/topaz/c0/g;->g()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbr/com/topaz/y/c;->e:Lbr/com/topaz/heartbeat/utils/OFDException;

    invoke-static {p1, v2}, Lbr/com/topaz/d0/d;->a(Lbr/com/topaz/c0/g;Lbr/com/topaz/heartbeat/utils/OFDException;)Lbr/com/topaz/d0/d;

    move-result-object p1

    iget-object v2, p0, Lbr/com/topaz/y/c;->b:Lbr/com/topaz/d0/c;

    invoke-virtual {v2, v1, p1}, Lbr/com/topaz/d0/c;->a(Ljava/lang/String;Lbr/com/topaz/d0/d;)V

    invoke-virtual {v0, v1, p1}, Lbr/com/topaz/l/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lbr/com/topaz/y/c;->f:Lbr/com/topaz/u0/r;

    const/16 v1, 0x7a

    invoke-interface {p1, v1}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "6"

    invoke-virtual {v0, v1, p1}, Lbr/com/topaz/l/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lbr/com/topaz/y/c;->g:Lbr/com/topaz/y/c$a;

    invoke-interface {p1, v0}, Lbr/com/topaz/y/c$a;->a(Lbr/com/topaz/l/l;)V

    return-void
.end method


# virtual methods
.method public a(Lbr/com/topaz/y/c$a;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/y/c;->g:Lbr/com/topaz/y/c$a;

    return-void
.end method

.method public run()V
    .locals 3

    iget-object v0, p0, Lbr/com/topaz/y/c;->b:Lbr/com/topaz/d0/c;

    invoke-virtual {v0}, Lbr/com/topaz/d0/c;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lbr/com/topaz/y/c;->h:Lbr/com/topaz/c0/d;

    invoke-virtual {v0}, Lbr/com/topaz/c0/d;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lbr/com/topaz/y/c;->b:Lbr/com/topaz/d0/c;

    invoke-virtual {v0}, Lbr/com/topaz/d0/c;->c()V

    iget-object v0, p0, Lbr/com/topaz/y/c;->h:Lbr/com/topaz/c0/d;

    iget-object v1, p0, Lbr/com/topaz/y/c;->c:Lbr/com/topaz/d0/a;

    invoke-virtual {v1}, Lbr/com/topaz/d0/a;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/topaz/c0/d;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lbr/com/topaz/y/c;->d:Ljava/util/List;

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/y/c;->i:Lbr/com/topaz/l/f0;

    invoke-interface {v0}, Lbr/com/topaz/l/f0;->p()Lbr/com/topaz/l/g;

    move-result-object v0

    iget-object v1, p0, Lbr/com/topaz/y/c;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0}, Lbr/com/topaz/l/g;->B()Lbr/com/topaz/y/d;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/y/d;->a()I

    move-result v0

    if-gt v1, v0, :cond_1

    iget-object v0, p0, Lbr/com/topaz/y/c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbr/com/topaz/c0/g;

    iget-object v2, p0, Lbr/com/topaz/y/c;->c:Lbr/com/topaz/d0/a;

    invoke-virtual {v1}, Lbr/com/topaz/c0/g;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lbr/com/topaz/d0/a;->b(Ljava/lang/String;)Lbr/com/topaz/c0/g;

    move-result-object v1

    invoke-direct {p0, v1}, Lbr/com/topaz/y/c;->a(Lbr/com/topaz/c0/g;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lbr/com/topaz/y/c;->b:Lbr/com/topaz/d0/c;

    invoke-virtual {v0}, Lbr/com/topaz/d0/c;->d()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_2
    return-void
.end method
