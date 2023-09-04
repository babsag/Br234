.class public final Landroidx/camera/core/ViewPort$Builder;
.super Ljava/lang/Object;
.source "ViewPort.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/ViewPort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private a:I

.field private final b:Landroid/util/Rational;

.field private final c:I

.field private d:I


# direct methods
.method public constructor <init>(Landroid/util/Rational;I)V
    .locals 1
    .param p1    # Landroid/util/Rational;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Landroidx/camera/core/ViewPort$Builder;->a:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroidx/camera/core/ViewPort$Builder;->d:I

    .line 4
    iput-object p1, p0, Landroidx/camera/core/ViewPort$Builder;->b:Landroid/util/Rational;

    .line 5
    iput p2, p0, Landroidx/camera/core/ViewPort$Builder;->c:I

    return-void
.end method


# virtual methods
.method public build()Landroidx/camera/core/ViewPort;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/ViewPort$Builder;->b:Landroid/util/Rational;

    const-string v1, "The crop aspect ratio must be set."

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Landroidx/camera/core/ViewPort;

    iget v1, p0, Landroidx/camera/core/ViewPort$Builder;->a:I

    iget-object v2, p0, Landroidx/camera/core/ViewPort$Builder;->b:Landroid/util/Rational;

    iget v3, p0, Landroidx/camera/core/ViewPort$Builder;->c:I

    iget v4, p0, Landroidx/camera/core/ViewPort$Builder;->d:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/camera/core/ViewPort;-><init>(ILandroid/util/Rational;II)V

    return-object v0
.end method

.method public setLayoutDirection(I)Landroidx/camera/core/ViewPort$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Landroidx/camera/core/ViewPort$Builder;->d:I

    return-object p0
.end method

.method public setScaleType(I)Landroidx/camera/core/ViewPort$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Landroidx/camera/core/ViewPort$Builder;->a:I

    return-object p0
.end method
