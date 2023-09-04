.class Lcom/google/android/material/slider/a$a;
.super Ljava/lang/Object;
.source "BaseSlider.java"

# interfaces
.implements Lcom/google/android/material/slider/a$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/slider/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/util/AttributeSet;

.field final synthetic b:I

.field final synthetic c:Lcom/google/android/material/slider/a;


# direct methods
.method constructor <init>(Lcom/google/android/material/slider/a;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/slider/a$a;->c:Lcom/google/android/material/slider/a;

    iput-object p2, p0, Lcom/google/android/material/slider/a$a;->a:Landroid/util/AttributeSet;

    iput p3, p0, Lcom/google/android/material/slider/a$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/material/tooltip/TooltipDrawable;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/material/slider/a$a;->c:Lcom/google/android/material/slider/a;

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/material/slider/a$a;->a:Landroid/util/AttributeSet;

    sget-object v3, Lcom/google/android/material/R$styleable;->Slider:[I

    iget v4, p0, Lcom/google/android/material/slider/a$a;->b:I

    invoke-static {}, Lcom/google/android/material/slider/a;->a()I

    move-result v5

    const/4 v0, 0x0

    new-array v6, v0, [I

    .line 3
    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/google/android/material/slider/a$a;->c:Lcom/google/android/material/slider/a;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/material/slider/a;->b(Landroid/content/Context;Landroid/content/res/TypedArray;)Lcom/google/android/material/tooltip/TooltipDrawable;

    move-result-object v1

    .line 5
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1
.end method
