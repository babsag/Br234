.class final Landroidx/recyclerview/widget/DiffUtil$a;
.super Ljava/lang/Object;
.source "DiffUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroidx/recyclerview/widget/DiffUtil$d;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/DiffUtil$d;Landroidx/recyclerview/widget/DiffUtil$d;)I
    .locals 2

    .line 1
    iget v0, p1, Landroidx/recyclerview/widget/DiffUtil$d;->a:I

    iget v1, p2, Landroidx/recyclerview/widget/DiffUtil$d;->a:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 2
    iget p1, p1, Landroidx/recyclerview/widget/DiffUtil$d;->b:I

    iget p2, p2, Landroidx/recyclerview/widget/DiffUtil$d;->b:I

    sub-int v0, p1, p2

    :cond_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Landroidx/recyclerview/widget/DiffUtil$d;

    check-cast p2, Landroidx/recyclerview/widget/DiffUtil$d;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/DiffUtil$a;->a(Landroidx/recyclerview/widget/DiffUtil$d;Landroidx/recyclerview/widget/DiffUtil$d;)I

    move-result p1

    return p1
.end method
