.class public Lbr/com/topaz/q0/b;
.super Lbr/com/topaz/q0/d;
.source "SourceFile"


# instance fields
.field private transient j:J

.field private transient k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbr/com/topaz/q0/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lbr/com/topaz/q0/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lbr/com/topaz/q0/b;->j:J

    return-wide v0
.end method

.method public a(Lbr/com/topaz/q0/c;)V
    .locals 3

    iget-object v0, p0, Lbr/com/topaz/q0/b;->k:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbr/com/topaz/q0/b;->k:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lbr/com/topaz/q0/b;->k:Ljava/util/List;

    const-string v2, "fc"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lbr/com/topaz/q0/d;->a(Ljava/util/HashMap;)V

    :cond_0
    iget-object v0, p0, Lbr/com/topaz/q0/b;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public e(J)V
    .locals 0

    iput-wide p1, p0, Lbr/com/topaz/q0/b;->j:J

    return-void
.end method
