.class public Lbr/com/topaz/o0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "c"
    .end annotation
.end field

.field private b:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "f"
    .end annotation
.end field

.field private c:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "t"
    .end annotation
.end field


# direct methods
.method public constructor <init>(IZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lbr/com/topaz/o0/b;->a:I

    iput-boolean p2, p0, Lbr/com/topaz/o0/b;->b:Z

    iput-wide p3, p0, Lbr/com/topaz/o0/b;->c:J

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/o0/b;->a:I

    return v0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lbr/com/topaz/o0/b;->c:J

    return-wide v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lbr/com/topaz/o0/b;->b:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lbr/com/topaz/o0/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lbr/com/topaz/o0/b;

    invoke-virtual {p0}, Lbr/com/topaz/o0/b;->b()J

    move-result-wide v2

    invoke-virtual {p1}, Lbr/com/topaz/o0/b;->b()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lbr/com/topaz/o0/b;->a()I

    move-result v0

    invoke-virtual {p1}, Lbr/com/topaz/o0/b;->a()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lbr/com/topaz/o0/b;->b:Z

    invoke-virtual {p1}, Lbr/com/topaz/o0/b;->c()Z

    move-result p1

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
