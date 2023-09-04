.class public Lbr/com/topaz/q0/f;
.super Lbr/com/topaz/q0/d;
.source "SourceFile"


# instance fields
.field private transient j:J

.field private transient k:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lbr/com/topaz/q0/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lbr/com/topaz/q0/f;->k:J

    return-wide v0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lbr/com/topaz/q0/f;->j:J

    return-wide v0
.end method

.method public e(J)V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "lt"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lbr/com/topaz/q0/d;->a(Ljava/util/HashMap;)V

    return-void
.end method

.method public f(J)V
    .locals 0

    iput-wide p1, p0, Lbr/com/topaz/q0/f;->k:J

    return-void
.end method

.method public g(J)V
    .locals 0

    iput-wide p1, p0, Lbr/com/topaz/q0/f;->j:J

    return-void
.end method
