.class public Lbr/com/topaz/d/h;
.super Lbr/com/topaz/s0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbr/com/topaz/d/h$b;
    }
.end annotation


# instance fields
.field private b:Lbr/com/topaz/d/h$b;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbr/com/topaz/d/b;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lbr/com/topaz/l/f0;

.field private e:Lbr/com/topaz/d/f;

.field private f:Lbr/com/topaz/d/d;

.field private g:Lbr/com/topaz/heartbeat/utils/OFDException;


# direct methods
.method public constructor <init>(Lbr/com/topaz/s/a;Lbr/com/topaz/l/f0;Lbr/com/topaz/d/f;Lbr/com/topaz/d/d;Lbr/com/topaz/heartbeat/utils/OFDException;)V
    .locals 0

    invoke-direct {p0, p1}, Lbr/com/topaz/s0/a;-><init>(Lbr/com/topaz/s/a;)V

    iput-object p2, p0, Lbr/com/topaz/d/h;->d:Lbr/com/topaz/l/f0;

    iput-object p3, p0, Lbr/com/topaz/d/h;->e:Lbr/com/topaz/d/f;

    iput-object p4, p0, Lbr/com/topaz/d/h;->f:Lbr/com/topaz/d/d;

    iput-object p5, p0, Lbr/com/topaz/d/h;->g:Lbr/com/topaz/heartbeat/utils/OFDException;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/d/h;->c:Ljava/util/List;

    return-void
.end method

.method private a(Lbr/com/topaz/d/b;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbr/com/topaz/d/b;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lbr/com/topaz/d/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lbr/com/topaz/d/b;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    :cond_0
    iget-object p2, p0, Lbr/com/topaz/d/h;->c:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method static synthetic a(Lbr/com/topaz/d/h;Lbr/com/topaz/d/b;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lbr/com/topaz/d/h;->a(Lbr/com/topaz/d/b;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a(Lbr/com/topaz/d/h$b;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/d/h;->b:Lbr/com/topaz/d/h$b;

    return-void
.end method

.method public run()V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/d/h;->d:Lbr/com/topaz/l/f0;

    invoke-interface {v0}, Lbr/com/topaz/l/f0;->p()Lbr/com/topaz/l/g;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/l/g;->b()Lbr/com/topaz/d/g;

    move-result-object v1

    invoke-virtual {v1}, Lbr/com/topaz/d/g;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lbr/com/topaz/l/g;->b()Lbr/com/topaz/d/g;

    move-result-object v2

    invoke-virtual {v2}, Lbr/com/topaz/d/g;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lbr/com/topaz/d/h;->f:Lbr/com/topaz/d/d;

    iget-object v3, p0, Lbr/com/topaz/d/h;->d:Lbr/com/topaz/l/f0;

    invoke-interface {v3}, Lbr/com/topaz/l/f0;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbr/com/topaz/d/d;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbr/com/topaz/d/a;

    iget-object v4, p0, Lbr/com/topaz/d/h;->e:Lbr/com/topaz/d/f;

    invoke-virtual {v3}, Lbr/com/topaz/d/a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lbr/com/topaz/d/a;->a()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0}, Lbr/com/topaz/l/g;->b()Lbr/com/topaz/d/g;

    move-result-object v6

    invoke-virtual {v6}, Lbr/com/topaz/d/g;->a()I

    move-result v6

    new-instance v7, Lbr/com/topaz/d/h$a;

    invoke-direct {v7, p0, v1}, Lbr/com/topaz/d/h$a;-><init>(Lbr/com/topaz/d/h;Ljava/util/List;)V

    invoke-virtual {v4, v5, v3, v6, v7}, Lbr/com/topaz/d/f;->a(Ljava/lang/String;Ljava/util/List;ILbr/com/topaz/d/f$a;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lbr/com/topaz/d/h;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lbr/com/topaz/d/h;->b:Lbr/com/topaz/d/h$b;

    iget-object v1, p0, Lbr/com/topaz/d/h;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Lbr/com/topaz/d/h$b;->a(Ljava/util/List;)V
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
    iget-object v1, p0, Lbr/com/topaz/d/h;->g:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v2, "020"

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-void
.end method
