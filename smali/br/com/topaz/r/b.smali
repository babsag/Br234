.class public Lbr/com/topaz/r/b;
.super Lbr/com/topaz/s0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbr/com/topaz/r/b$a;
    }
.end annotation


# instance fields
.field private b:Lbr/com/topaz/l/l;

.field private c:Lbr/com/topaz/w0/b;

.field private d:Lbr/com/topaz/l/f0;

.field private e:Lbr/com/topaz/l/e0;

.field private f:Lbr/com/topaz/m0/d;

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

.field private i:Ljava/lang/String;

.field private j:Lbr/com/topaz/n/a;

.field private k:Lbr/com/topaz/heartbeat/utils/OFDException;

.field private l:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lbr/com/topaz/heartbeat/signalinfo/a;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lbr/com/topaz/u0/d;

.field private n:Lbr/com/topaz/t0/b;

.field private o:Lbr/com/topaz/m/a;

.field private p:Lbr/com/topaz/r/b$a;

.field private q:Lbr/com/topaz/m/h;

.field private r:Lbr/com/topaz/l/g;

.field private s:Lbr/com/topaz/u0/l;

.field private t:Lbr/com/topaz/o/b;


# direct methods
.method public constructor <init>(Lbr/com/topaz/s/a;Lbr/com/topaz/l/l;Lbr/com/topaz/w0/b;Lbr/com/topaz/l/f0;Lbr/com/topaz/l/e0;Lbr/com/topaz/m0/d;Ljava/util/Map;Lbr/com/topaz/m/e;Ljava/lang/String;Lbr/com/topaz/n/a;Ljava/util/LinkedList;Lbr/com/topaz/u0/d;Lbr/com/topaz/t0/b;Lbr/com/topaz/m/a;Lbr/com/topaz/m/h;Lbr/com/topaz/u0/l;Lbr/com/topaz/o/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbr/com/topaz/s/a;",
            "Lbr/com/topaz/l/l;",
            "Lbr/com/topaz/w0/b;",
            "Lbr/com/topaz/l/f0;",
            "Lbr/com/topaz/l/e0;",
            "Lbr/com/topaz/m0/d;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lbr/com/topaz/m/d;",
            ">;",
            "Lbr/com/topaz/m/e;",
            "Ljava/lang/String;",
            "Lbr/com/topaz/n/a;",
            "Ljava/util/LinkedList<",
            "Lbr/com/topaz/heartbeat/signalinfo/a;",
            ">;",
            "Lbr/com/topaz/u0/d;",
            "Lbr/com/topaz/t0/b;",
            "Lbr/com/topaz/m/a;",
            "Lbr/com/topaz/m/h;",
            "Lbr/com/topaz/u0/l;",
            "Lbr/com/topaz/o/b;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0, p1}, Lbr/com/topaz/s0/a;-><init>(Lbr/com/topaz/s/a;)V

    move-object v1, p2

    iput-object v1, v0, Lbr/com/topaz/r/b;->b:Lbr/com/topaz/l/l;

    move-object v1, p3

    iput-object v1, v0, Lbr/com/topaz/r/b;->c:Lbr/com/topaz/w0/b;

    move-object v1, p4

    iput-object v1, v0, Lbr/com/topaz/r/b;->d:Lbr/com/topaz/l/f0;

    move-object v1, p5

    iput-object v1, v0, Lbr/com/topaz/r/b;->e:Lbr/com/topaz/l/e0;

    move-object v1, p6

    iput-object v1, v0, Lbr/com/topaz/r/b;->f:Lbr/com/topaz/m0/d;

    move-object v1, p7

    iput-object v1, v0, Lbr/com/topaz/r/b;->g:Ljava/util/Map;

    move-object v1, p8

    iput-object v1, v0, Lbr/com/topaz/r/b;->h:Lbr/com/topaz/m/e;

    move-object v1, p9

    iput-object v1, v0, Lbr/com/topaz/r/b;->i:Ljava/lang/String;

    move-object v1, p10

    iput-object v1, v0, Lbr/com/topaz/r/b;->j:Lbr/com/topaz/n/a;

    new-instance v1, Lbr/com/topaz/heartbeat/utils/OFDException;

    iget-object v2, v0, Lbr/com/topaz/r/b;->d:Lbr/com/topaz/l/f0;

    invoke-direct {v1, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;-><init>(Lbr/com/topaz/l/f0;)V

    iput-object v1, v0, Lbr/com/topaz/r/b;->k:Lbr/com/topaz/heartbeat/utils/OFDException;

    move-object v1, p11

    iput-object v1, v0, Lbr/com/topaz/r/b;->l:Ljava/util/LinkedList;

    move-object v1, p12

    iput-object v1, v0, Lbr/com/topaz/r/b;->m:Lbr/com/topaz/u0/d;

    move-object/from16 v1, p13

    iput-object v1, v0, Lbr/com/topaz/r/b;->n:Lbr/com/topaz/t0/b;

    move-object/from16 v1, p14

    iput-object v1, v0, Lbr/com/topaz/r/b;->o:Lbr/com/topaz/m/a;

    move-object/from16 v1, p15

    iput-object v1, v0, Lbr/com/topaz/r/b;->q:Lbr/com/topaz/m/h;

    move-object/from16 v1, p16

    iput-object v1, v0, Lbr/com/topaz/r/b;->s:Lbr/com/topaz/u0/l;

    move-object/from16 v1, p17

    iput-object v1, v0, Lbr/com/topaz/r/b;->t:Lbr/com/topaz/o/b;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/r/b;->g:Ljava/util/Map;

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

    iget-object v0, p0, Lbr/com/topaz/r/b;->k:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v1, "008"

    invoke-virtual {v0, p1, v1}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    const-string p1, ""

    return-object p1
.end method

.method private c()J
    .locals 3

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/r/b;->c:Lbr/com/topaz/w0/b;

    invoke-interface {v0}, Lbr/com/topaz/w0/b;->a()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lbr/com/topaz/r/b;->k:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v2, "156"

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private d()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/r/b;->e:Lbr/com/topaz/l/e0;

    invoke-interface {v0}, Lbr/com/topaz/l/e0;->t()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lbr/com/topaz/r/b;->k:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v2, "140"

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    const-string v0, ""

    return-object v0
.end method

.method private f()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/r/b;->m:Lbr/com/topaz/u0/d;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbr/com/topaz/u0/d;->a(Ljava/util/Date;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lbr/com/topaz/r/b;->k:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v2, "141"

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    const-string v0, ""

    return-object v0
.end method

.method private g()Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lbr/com/topaz/r/b;->h:Lbr/com/topaz/m/e;

    invoke-virtual {v1}, Lbr/com/topaz/m/e;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbr/com/topaz/r/b;->h:Lbr/com/topaz/m/e;

    invoke-virtual {v1}, Lbr/com/topaz/m/e;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lbr/com/topaz/r/b;->k:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v2, "122"

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    const-string v0, ""

    return-object v0
.end method

.method private h()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/r/b;->c:Lbr/com/topaz/w0/b;

    invoke-interface {v0}, Lbr/com/topaz/w0/b;->d()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lbr/com/topaz/r/b;->k:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v2, "138"

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    const-string v0, ""

    return-object v0
.end method

.method private i()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/r/b;->c:Lbr/com/topaz/w0/b;

    invoke-interface {v0}, Lbr/com/topaz/w0/b;->b()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lbr/com/topaz/r/b;->k:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v2, "139"

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    const-string v0, ""

    return-object v0
.end method

.method private j()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/r/b;->c:Lbr/com/topaz/w0/b;

    invoke-interface {v0}, Lbr/com/topaz/w0/b;->c()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lbr/com/topaz/r/b;->r:Lbr/com/topaz/l/g;

    invoke-virtual {v1}, Lbr/com/topaz/l/g;->r()Lbr/com/topaz/l/q;

    move-result-object v1

    invoke-virtual {v1}, Lbr/com/topaz/l/q;->b()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lbr/com/topaz/r/b;->k:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v2, "137"

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Lbr/com/topaz/r/b$a;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/r/b;->p:Lbr/com/topaz/r/b$a;

    return-void
.end method

.method public k()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/r/b;->d:Lbr/com/topaz/l/f0;

    invoke-interface {v0}, Lbr/com/topaz/l/f0;->h()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lbr/com/topaz/r/b;->k:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v2, "157"

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public run()V
    .locals 9

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/r/b;->d:Lbr/com/topaz/l/f0;

    invoke-interface {v0}, Lbr/com/topaz/l/f0;->p()Lbr/com/topaz/l/g;

    move-result-object v0

    iput-object v0, p0, Lbr/com/topaz/r/b;->r:Lbr/com/topaz/l/g;
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
    iget-object v1, p0, Lbr/com/topaz/r/b;->k:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v2, "042"

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_1
    :try_start_1
    iget-object v0, p0, Lbr/com/topaz/r/b;->b:Lbr/com/topaz/l/l;

    invoke-direct {p0}, Lbr/com/topaz/r/b;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/topaz/l/l;->o(Ljava/lang/String;)V

    iget-object v0, p0, Lbr/com/topaz/r/b;->b:Lbr/com/topaz/l/l;

    invoke-direct {p0}, Lbr/com/topaz/r/b;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/topaz/l/l;->p(Ljava/lang/String;)V

    iget-object v0, p0, Lbr/com/topaz/r/b;->b:Lbr/com/topaz/l/l;

    invoke-direct {p0}, Lbr/com/topaz/r/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/topaz/l/l;->k(Ljava/lang/String;)V

    iget-object v0, p0, Lbr/com/topaz/r/b;->b:Lbr/com/topaz/l/l;

    iget-object v1, p0, Lbr/com/topaz/r/b;->h:Lbr/com/topaz/m/e;

    invoke-virtual {v1}, Lbr/com/topaz/m/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/topaz/l/l;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lbr/com/topaz/r/b;->b:Lbr/com/topaz/l/l;

    invoke-direct {p0}, Lbr/com/topaz/r/b;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/topaz/l/l;->n(Ljava/lang/String;)V

    iget-object v0, p0, Lbr/com/topaz/r/b;->b:Lbr/com/topaz/l/l;

    iget-object v1, p0, Lbr/com/topaz/r/b;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbr/com/topaz/l/l;->z(Ljava/lang/String;)V

    iget-object v0, p0, Lbr/com/topaz/r/b;->b:Lbr/com/topaz/l/l;

    const-string v1, "Android"

    invoke-virtual {v0, v1}, Lbr/com/topaz/l/l;->y(Ljava/lang/String;)V

    iget-object v0, p0, Lbr/com/topaz/r/b;->b:Lbr/com/topaz/l/l;

    iget-object v1, p0, Lbr/com/topaz/r/b;->o:Lbr/com/topaz/m/a;

    invoke-virtual {v1}, Lbr/com/topaz/m/a;->g()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/topaz/l/l;->a(Ljava/util/HashMap;)V

    iget-object v0, p0, Lbr/com/topaz/r/b;->b:Lbr/com/topaz/l/l;

    iget-object v1, p0, Lbr/com/topaz/r/b;->f:Lbr/com/topaz/m0/d;

    invoke-interface {v1}, Lbr/com/topaz/m0/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/topaz/l/l;->E(Ljava/lang/String;)V

    iget-object v0, p0, Lbr/com/topaz/r/b;->b:Lbr/com/topaz/l/l;

    iget-object v1, p0, Lbr/com/topaz/r/b;->f:Lbr/com/topaz/m0/d;

    invoke-interface {v1}, Lbr/com/topaz/m0/d;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/topaz/l/l;->j(Ljava/lang/String;)V

    iget-object v0, p0, Lbr/com/topaz/r/b;->b:Lbr/com/topaz/l/l;

    iget-object v1, p0, Lbr/com/topaz/r/b;->f:Lbr/com/topaz/m0/d;

    invoke-interface {v1}, Lbr/com/topaz/m0/d;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/topaz/l/l;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lbr/com/topaz/r/b;->b:Lbr/com/topaz/l/l;

    iget-object v1, p0, Lbr/com/topaz/r/b;->f:Lbr/com/topaz/m0/d;

    invoke-interface {v1}, Lbr/com/topaz/m0/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/topaz/l/l;->w(Ljava/lang/String;)V

    iget-object v0, p0, Lbr/com/topaz/r/b;->b:Lbr/com/topaz/l/l;

    iget-object v1, p0, Lbr/com/topaz/r/b;->f:Lbr/com/topaz/m0/d;

    invoke-interface {v1}, Lbr/com/topaz/m0/d;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/topaz/l/l;->A(Ljava/lang/String;)V

    iget-object v0, p0, Lbr/com/topaz/r/b;->b:Lbr/com/topaz/l/l;

    iget-object v1, p0, Lbr/com/topaz/r/b;->f:Lbr/com/topaz/m0/d;

    invoke-interface {v1}, Lbr/com/topaz/m0/d;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/topaz/l/l;->l(Ljava/lang/String;)V

    iget-object v0, p0, Lbr/com/topaz/r/b;->b:Lbr/com/topaz/l/l;

    iget-object v1, p0, Lbr/com/topaz/r/b;->f:Lbr/com/topaz/m0/d;

    invoke-interface {v1}, Lbr/com/topaz/m0/d;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/topaz/l/l;->g(Ljava/lang/String;)V

    iget-object v0, p0, Lbr/com/topaz/r/b;->b:Lbr/com/topaz/l/l;

    iget-object v1, p0, Lbr/com/topaz/r/b;->f:Lbr/com/topaz/m0/d;

    invoke-interface {v1}, Lbr/com/topaz/m0/d;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/topaz/l/l;->x(Ljava/lang/String;)V

    iget-object v0, p0, Lbr/com/topaz/r/b;->b:Lbr/com/topaz/l/l;

    iget-object v1, p0, Lbr/com/topaz/r/b;->f:Lbr/com/topaz/m0/d;

    invoke-interface {v1}, Lbr/com/topaz/m0/d;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/topaz/l/l;->D(Ljava/lang/String;)V

    iget-object v0, p0, Lbr/com/topaz/r/b;->b:Lbr/com/topaz/l/l;

    iget-object v1, p0, Lbr/com/topaz/r/b;->f:Lbr/com/topaz/m0/d;

    invoke-interface {v1}, Lbr/com/topaz/m0/d;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/topaz/l/l;->F(Ljava/lang/String;)V

    iget-object v0, p0, Lbr/com/topaz/r/b;->b:Lbr/com/topaz/l/l;

    const-string v1, "4.6.0.1074349"

    invoke-virtual {v0, v1}, Lbr/com/topaz/l/l;->s(Ljava/lang/String;)V

    iget-object v0, p0, Lbr/com/topaz/r/b;->b:Lbr/com/topaz/l/l;

    const-string v1, "hardwareSerial"

    invoke-direct {p0, v1}, Lbr/com/topaz/r/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/topaz/l/l;->r(Ljava/lang/String;)V

    iget-object v0, p0, Lbr/com/topaz/r/b;->b:Lbr/com/topaz/l/l;

    const-string v1, "root_path"

    invoke-direct {p0, v1}, Lbr/com/topaz/r/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lbr/com/topaz/l/l;->b(Z)V

    iget-object v0, p0, Lbr/com/topaz/r/b;->b:Lbr/com/topaz/l/l;

    const-string v1, "su_command"

    invoke-direct {p0, v1}, Lbr/com/topaz/r/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lbr/com/topaz/l/l;->d(Z)V

    iget-object v0, p0, Lbr/com/topaz/r/b;->b:Lbr/com/topaz/l/l;

    invoke-direct {p0}, Lbr/com/topaz/r/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/topaz/l/l;->h(Ljava/lang/String;)V

    iget-object v0, p0, Lbr/com/topaz/r/b;->b:Lbr/com/topaz/l/l;

    iget-object v1, p0, Lbr/com/topaz/r/b;->j:Lbr/com/topaz/n/a;

    invoke-interface {v1}, Lbr/com/topaz/n/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/topaz/l/l;->m(Ljava/lang/String;)V

    iget-object v0, p0, Lbr/com/topaz/r/b;->b:Lbr/com/topaz/l/l;

    const-string v1, "galaxyHardwareSerial"

    invoke-direct {p0, v1}, Lbr/com/topaz/r/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/topaz/l/l;->q(Ljava/lang/String;)V

    iget-object v0, p0, Lbr/com/topaz/r/b;->b:Lbr/com/topaz/l/l;

    iget-object v1, p0, Lbr/com/topaz/r/b;->f:Lbr/com/topaz/m0/d;

    invoke-interface {v1}, Lbr/com/topaz/m0/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/topaz/l/l;->G(Ljava/lang/String;)V

    iget-object v0, p0, Lbr/com/topaz/r/b;->b:Lbr/com/topaz/l/l;

    iget-object v1, p0, Lbr/com/topaz/r/b;->h:Lbr/com/topaz/m/e;

    invoke-virtual {v1}, Lbr/com/topaz/m/e;->s()Z

    move-result v1

    invoke-virtual {v0, v1}, Lbr/com/topaz/l/l;->c(Z)V

    iget-object v0, p0, Lbr/com/topaz/r/b;->b:Lbr/com/topaz/l/l;

    iget-object v1, p0, Lbr/com/topaz/r/b;->s:Lbr/com/topaz/u0/l;

    invoke-virtual {v1}, Lbr/com/topaz/u0/l;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/topaz/l/l;->B(Ljava/lang/String;)V

    iget-object v0, p0, Lbr/com/topaz/r/b;->b:Lbr/com/topaz/l/l;

    iget-object v1, p0, Lbr/com/topaz/r/b;->h:Lbr/com/topaz/m/e;

    invoke-virtual {v1}, Lbr/com/topaz/m/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/topaz/l/l;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lbr/com/topaz/r/b;->b:Lbr/com/topaz/l/l;

    iget-object v1, p0, Lbr/com/topaz/r/b;->h:Lbr/com/topaz/m/e;

    invoke-virtual {v1}, Lbr/com/topaz/m/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/topaz/l/l;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lbr/com/topaz/r/b;->b:Lbr/com/topaz/l/l;

    iget-object v1, p0, Lbr/com/topaz/r/b;->l:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Lbr/com/topaz/l/l;->a(Ljava/util/LinkedList;)V

    iget-object v0, p0, Lbr/com/topaz/r/b;->b:Lbr/com/topaz/l/l;

    iget-object v1, p0, Lbr/com/topaz/r/b;->h:Lbr/com/topaz/m/e;

    invoke-virtual {v1}, Lbr/com/topaz/m/e;->p()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lbr/com/topaz/l/l;->f(J)V

    iget-object v0, p0, Lbr/com/topaz/r/b;->b:Lbr/com/topaz/l/l;

    iget-object v1, p0, Lbr/com/topaz/r/b;->h:Lbr/com/topaz/m/e;

    invoke-virtual {v1}, Lbr/com/topaz/m/e;->f()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lbr/com/topaz/l/l;->d(J)V

    iget-object v0, p0, Lbr/com/topaz/r/b;->b:Lbr/com/topaz/l/l;

    iget-object v1, p0, Lbr/com/topaz/r/b;->h:Lbr/com/topaz/m/e;

    invoke-virtual {v1}, Lbr/com/topaz/m/e;->q()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lbr/com/topaz/l/l;->g(J)V

    iget-object v0, p0, Lbr/com/topaz/r/b;->b:Lbr/com/topaz/l/l;

    iget-object v1, p0, Lbr/com/topaz/r/b;->h:Lbr/com/topaz/m/e;

    invoke-virtual {v1}, Lbr/com/topaz/m/e;->g()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lbr/com/topaz/l/l;->e(J)V

    iget-object v0, p0, Lbr/com/topaz/r/b;->b:Lbr/com/topaz/l/l;

    iget-object v1, p0, Lbr/com/topaz/r/b;->n:Lbr/com/topaz/t0/b;

    invoke-virtual {v1}, Lbr/com/topaz/t0/b;->b()Lbr/com/topaz/heartbeat/userinfo/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/topaz/l/l;->a(Lbr/com/topaz/heartbeat/userinfo/a;)V

    iget-object v0, p0, Lbr/com/topaz/r/b;->b:Lbr/com/topaz/l/l;

    iget-object v1, p0, Lbr/com/topaz/r/b;->f:Lbr/com/topaz/m0/d;

    invoke-interface {v1}, Lbr/com/topaz/m0/d;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/topaz/l/l;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lbr/com/topaz/r/b;->b:Lbr/com/topaz/l/l;

    iget-object v1, p0, Lbr/com/topaz/r/b;->h:Lbr/com/topaz/m/e;

    invoke-virtual {v1}, Lbr/com/topaz/m/e;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/topaz/l/l;->u(Ljava/lang/String;)V

    iget-object v0, p0, Lbr/com/topaz/r/b;->b:Lbr/com/topaz/l/l;

    iget-object v1, p0, Lbr/com/topaz/r/b;->h:Lbr/com/topaz/m/e;

    invoke-virtual {v1}, Lbr/com/topaz/m/e;->r()Z

    move-result v1

    invoke-virtual {v0, v1}, Lbr/com/topaz/l/l;->e(Z)V

    iget-object v0, p0, Lbr/com/topaz/r/b;->b:Lbr/com/topaz/l/l;

    iget-object v1, p0, Lbr/com/topaz/r/b;->o:Lbr/com/topaz/m/a;

    invoke-virtual {v1}, Lbr/com/topaz/m/a;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Lbr/com/topaz/l/l;->a(Z)V

    iget-object v0, p0, Lbr/com/topaz/r/b;->b:Lbr/com/topaz/l/l;

    iget-object v1, p0, Lbr/com/topaz/r/b;->o:Lbr/com/topaz/m/a;

    invoke-virtual {v1}, Lbr/com/topaz/m/a;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lbr/com/topaz/l/l;->a(J)V

    iget-object v0, p0, Lbr/com/topaz/r/b;->b:Lbr/com/topaz/l/l;

    iget-object v1, p0, Lbr/com/topaz/r/b;->o:Lbr/com/topaz/m/a;

    invoke-virtual {v1}, Lbr/com/topaz/m/a;->d()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lbr/com/topaz/l/l;->b(J)V

    iget-object v0, p0, Lbr/com/topaz/r/b;->b:Lbr/com/topaz/l/l;

    invoke-direct {p0}, Lbr/com/topaz/r/b;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lbr/com/topaz/l/l;->c(J)V

    iget-object v0, p0, Lbr/com/topaz/r/b;->b:Lbr/com/topaz/l/l;

    iget-object v1, p0, Lbr/com/topaz/r/b;->h:Lbr/com/topaz/m/e;

    invoke-virtual {v1}, Lbr/com/topaz/m/e;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/topaz/l/l;->t(Ljava/lang/String;)V

    iget-object v0, p0, Lbr/com/topaz/r/b;->b:Lbr/com/topaz/l/l;

    iget-object v1, p0, Lbr/com/topaz/r/b;->h:Lbr/com/topaz/m/e;

    invoke-virtual {v1}, Lbr/com/topaz/m/e;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/topaz/l/l;->C(Ljava/lang/String;)V

    iget-object v0, p0, Lbr/com/topaz/r/b;->b:Lbr/com/topaz/l/l;

    iget-object v1, p0, Lbr/com/topaz/r/b;->h:Lbr/com/topaz/m/e;

    invoke-virtual {v1}, Lbr/com/topaz/m/e;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/topaz/l/l;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lbr/com/topaz/r/b;->r:Lbr/com/topaz/l/g;

    invoke-virtual {v0}, Lbr/com/topaz/l/g;->r()Lbr/com/topaz/l/q;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/l/q;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbr/com/topaz/r/b;->b:Lbr/com/topaz/l/l;

    invoke-direct {p0}, Lbr/com/topaz/r/b;->j()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/topaz/l/l;->d(Ljava/util/List;)V

    :cond_0
    iget-object v0, p0, Lbr/com/topaz/r/b;->r:Lbr/com/topaz/l/g;

    invoke-virtual {v0}, Lbr/com/topaz/l/g;->r()Lbr/com/topaz/l/q;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/l/q;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbr/com/topaz/r/b;->b:Lbr/com/topaz/l/l;

    invoke-virtual {p0}, Lbr/com/topaz/r/b;->k()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/topaz/l/l;->e(Ljava/util/List;)V

    :cond_1
    iget-object v0, p0, Lbr/com/topaz/r/b;->e:Lbr/com/topaz/l/e0;

    invoke-interface {v0}, Lbr/com/topaz/l/e0;->m()J

    move-result-wide v2

    iget-object v0, p0, Lbr/com/topaz/r/b;->e:Lbr/com/topaz/l/e0;

    invoke-interface {v0}, Lbr/com/topaz/l/e0;->k()J

    move-result-wide v4

    iget-object v0, p0, Lbr/com/topaz/r/b;->e:Lbr/com/topaz/l/e0;

    invoke-interface {v0}, Lbr/com/topaz/l/e0;->p()J

    move-result-wide v6

    iget-object v0, p0, Lbr/com/topaz/r/b;->b:Lbr/com/topaz/l/l;

    new-instance v8, Lbr/com/topaz/l/r;

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lbr/com/topaz/l/r;-><init>(JJJ)V

    invoke-virtual {v0, v8}, Lbr/com/topaz/l/l;->a(Lbr/com/topaz/l/r;)V

    iget-object v0, p0, Lbr/com/topaz/r/b;->r:Lbr/com/topaz/l/g;

    invoke-virtual {v0}, Lbr/com/topaz/l/g;->D()Lbr/com/topaz/l/c0;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/l/c0;->b()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lbr/com/topaz/r/b;->b:Lbr/com/topaz/l/l;

    iget-object v1, p0, Lbr/com/topaz/r/b;->q:Lbr/com/topaz/m/h;

    iget-object v2, p0, Lbr/com/topaz/r/b;->r:Lbr/com/topaz/l/g;

    invoke-virtual {v2}, Lbr/com/topaz/l/g;->D()Lbr/com/topaz/l/c0;

    move-result-object v2

    invoke-virtual {v2}, Lbr/com/topaz/l/c0;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Lbr/com/topaz/m/h;->b(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/topaz/l/l;->c(Ljava/lang/Integer;)V

    :cond_2
    iget-object v0, p0, Lbr/com/topaz/r/b;->r:Lbr/com/topaz/l/g;

    invoke-virtual {v0}, Lbr/com/topaz/l/g;->D()Lbr/com/topaz/l/c0;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/l/c0;->a()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lbr/com/topaz/r/b;->b:Lbr/com/topaz/l/l;

    iget-object v1, p0, Lbr/com/topaz/r/b;->q:Lbr/com/topaz/m/h;

    iget-object v2, p0, Lbr/com/topaz/r/b;->r:Lbr/com/topaz/l/g;

    invoke-virtual {v2}, Lbr/com/topaz/l/g;->D()Lbr/com/topaz/l/c0;

    move-result-object v2

    invoke-virtual {v2}, Lbr/com/topaz/l/c0;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lbr/com/topaz/m/h;->a(I)Lbr/com/topaz/l/d0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/topaz/l/l;->a(Lbr/com/topaz/l/d0;)V

    :cond_3
    iget-object v0, p0, Lbr/com/topaz/r/b;->r:Lbr/com/topaz/l/g;

    invoke-virtual {v0}, Lbr/com/topaz/l/g;->e()Lbr/com/topaz/l/d;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/l/d;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lbr/com/topaz/r/b;->b:Lbr/com/topaz/l/l;

    iget-object v1, p0, Lbr/com/topaz/r/b;->f:Lbr/com/topaz/m0/d;

    invoke-interface {v1}, Lbr/com/topaz/m0/d;->f()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/topaz/l/l;->b(Ljava/lang/Integer;)V

    iget-object v0, p0, Lbr/com/topaz/r/b;->b:Lbr/com/topaz/l/l;

    iget-object v1, p0, Lbr/com/topaz/r/b;->f:Lbr/com/topaz/m0/d;

    invoke-interface {v1}, Lbr/com/topaz/m0/d;->p()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/topaz/l/l;->c(Ljava/util/List;)V

    :cond_4
    iget-object v0, p0, Lbr/com/topaz/r/b;->r:Lbr/com/topaz/l/g;

    invoke-virtual {v0}, Lbr/com/topaz/l/g;->d()Lbr/com/topaz/l/a;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/l/a;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lbr/com/topaz/r/b;->b:Lbr/com/topaz/l/l;

    iget-object v1, p0, Lbr/com/topaz/r/b;->f:Lbr/com/topaz/m0/d;

    iget-object v2, p0, Lbr/com/topaz/r/b;->r:Lbr/com/topaz/l/g;

    invoke-virtual {v2}, Lbr/com/topaz/l/g;->d()Lbr/com/topaz/l/a;

    move-result-object v2

    invoke-interface {v1, v2}, Lbr/com/topaz/m0/d;->a(Lbr/com/topaz/l/a;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/topaz/l/l;->b(Ljava/util/List;)V

    :cond_5
    iget-object v0, p0, Lbr/com/topaz/r/b;->r:Lbr/com/topaz/l/g;

    invoke-virtual {v0}, Lbr/com/topaz/l/g;->I()Lbr/com/topaz/m0/c;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/m0/c;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lbr/com/topaz/r/b;->b:Lbr/com/topaz/l/l;

    iget-object v1, p0, Lbr/com/topaz/r/b;->f:Lbr/com/topaz/m0/d;

    invoke-interface {v1}, Lbr/com/topaz/m0/d;->e()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/topaz/l/l;->f(Ljava/util/List;)V

    :cond_6
    iget-object v0, p0, Lbr/com/topaz/r/b;->r:Lbr/com/topaz/l/g;

    invoke-virtual {v0}, Lbr/com/topaz/l/g;->c()Lbr/com/topaz/e/d;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/e/d;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lbr/com/topaz/r/b;->b:Lbr/com/topaz/l/l;

    iget-object v1, p0, Lbr/com/topaz/r/b;->e:Lbr/com/topaz/l/e0;

    invoke-interface {v1}, Lbr/com/topaz/l/e0;->s()Lbr/com/topaz/e/a;

    move-result-object v1

    invoke-virtual {v1}, Lbr/com/topaz/e/a;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/topaz/l/l;->a(Ljava/util/List;)V

    :cond_7
    iget-object v0, p0, Lbr/com/topaz/r/b;->r:Lbr/com/topaz/l/g;

    invoke-virtual {v0}, Lbr/com/topaz/l/g;->l()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lbr/com/topaz/r/b;->b:Lbr/com/topaz/l/l;

    invoke-virtual {v0}, Lbr/com/topaz/l/l;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lbr/com/topaz/r/b;->b:Lbr/com/topaz/l/l;

    invoke-virtual {v0}, Lbr/com/topaz/l/l;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "START"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lbr/com/topaz/r/b;->b:Lbr/com/topaz/l/l;

    invoke-virtual {v0}, Lbr/com/topaz/l/l;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lbr/com/topaz/r/b;->b:Lbr/com/topaz/l/l;

    invoke-virtual {v0}, Lbr/com/topaz/l/l;->d()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_8
    iget-object v0, p0, Lbr/com/topaz/r/b;->b:Lbr/com/topaz/l/l;

    iget-object v1, p0, Lbr/com/topaz/r/b;->j:Lbr/com/topaz/n/a;

    invoke-interface {v1}, Lbr/com/topaz/n/a;->d()Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x2

    goto :goto_2

    :cond_9
    const/4 v1, 0x1

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/topaz/l/l;->a(Ljava/lang/Integer;)V

    :cond_a
    iget-object v0, p0, Lbr/com/topaz/r/b;->b:Lbr/com/topaz/l/l;

    new-instance v7, Lbr/com/topaz/l/h0;

    iget-object v1, p0, Lbr/com/topaz/r/b;->e:Lbr/com/topaz/l/e0;

    invoke-interface {v1}, Lbr/com/topaz/l/e0;->h()J

    move-result-wide v2

    iget-object v1, p0, Lbr/com/topaz/r/b;->e:Lbr/com/topaz/l/e0;

    invoke-interface {v1}, Lbr/com/topaz/l/e0;->l()J

    move-result-wide v4

    iget-object v1, p0, Lbr/com/topaz/r/b;->o:Lbr/com/topaz/m/a;

    invoke-virtual {v1}, Lbr/com/topaz/m/a;->b()Ljava/lang/String;

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lbr/com/topaz/l/h0;-><init>(JJLjava/lang/String;)V

    invoke-virtual {v0, v7}, Lbr/com/topaz/l/l;->a(Lbr/com/topaz/l/h0;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    iget-object v1, p0, Lbr/com/topaz/r/b;->k:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v2, "088"

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_3
    iget-object v0, p0, Lbr/com/topaz/r/b;->p:Lbr/com/topaz/r/b$a;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lbr/com/topaz/r/b;->b:Lbr/com/topaz/l/l;

    invoke-interface {v0, v1}, Lbr/com/topaz/r/b$a;->b(Lbr/com/topaz/l/l;)V

    :cond_b
    return-void
.end method
