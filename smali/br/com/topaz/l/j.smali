.class public Lbr/com/topaz/l/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Lbr/com/topaz/q/h;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "exception"
    .end annotation
.end field

.field private b:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "counter"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbr/com/topaz/q/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/l/j;->a:Lbr/com/topaz/q/h;

    const/4 p1, 0x1

    iput p1, p0, Lbr/com/topaz/l/j;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/l/j;->b:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lbr/com/topaz/l/j;->b:I

    return-void
.end method

.method public b()Lbr/com/topaz/q/h;
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/l/j;->a:Lbr/com/topaz/q/h;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lbr/com/topaz/l/j;

    if-eqz v0, :cond_0

    check-cast p1, Lbr/com/topaz/l/j;

    invoke-virtual {p1}, Lbr/com/topaz/l/j;->b()Lbr/com/topaz/q/h;

    move-result-object p1

    invoke-virtual {p0}, Lbr/com/topaz/l/j;->b()Lbr/com/topaz/q/h;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbr/com/topaz/q/h;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
