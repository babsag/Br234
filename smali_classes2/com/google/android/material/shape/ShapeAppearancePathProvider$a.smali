.class final Lcom/google/android/material/shape/ShapeAppearancePathProvider$a;
.super Ljava/lang/Object;
.source "ShapeAppearancePathProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/ShapeAppearancePathProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/google/android/material/shape/ShapeAppearanceModel;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b:Landroid/graphics/Path;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final c:Landroid/graphics/RectF;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final d:Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final e:F


# direct methods
.method constructor <init>(Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;Landroid/graphics/Path;)V
    .locals 0
    .param p1    # Lcom/google/android/material/shape/ShapeAppearanceModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p4, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider$a;->d:Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;

    .line 3
    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider$a;->a:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 4
    iput p2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider$a;->e:F

    .line 5
    iput-object p3, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider$a;->c:Landroid/graphics/RectF;

    .line 6
    iput-object p5, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider$a;->b:Landroid/graphics/Path;

    return-void
.end method
