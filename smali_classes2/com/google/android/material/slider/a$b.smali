.class Lcom/google/android/material/slider/a$b;
.super Ljava/lang/Object;
.source "BaseSlider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/slider/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/google/android/material/slider/a;


# direct methods
.method private constructor <init>(Lcom/google/android/material/slider/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/slider/a$b;->b:Lcom/google/android/material/slider/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/google/android/material/slider/a$b;->a:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/slider/a;Lcom/google/android/material/slider/a$a;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/a$b;-><init>(Lcom/google/android/material/slider/a;)V

    return-void
.end method


# virtual methods
.method a(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/slider/a$b;->a:I

    return-void
.end method

.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/slider/a$b;->b:Lcom/google/android/material/slider/a;

    invoke-static {v0}, Lcom/google/android/material/slider/a;->c(Lcom/google/android/material/slider/a;)Lcom/google/android/material/slider/a$c;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/slider/a$b;->a:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    return-void
.end method
