.class final Lcom/google/android/material/transition/platform/b$b;
.super Ljava/lang/Object;
.source "FadeModeEvaluators.java"

# interfaces
.implements Lcom/google/android/material/transition/platform/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/transition/platform/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FFF)Lcom/google/android/material/transition/platform/c;
    .locals 2

    const/16 v0, 0xff

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1, p2, p3, p1}, Lcom/google/android/material/transition/platform/j;->m(IIFFF)I

    move-result p1

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/material/transition/platform/c;->b(II)Lcom/google/android/material/transition/platform/c;

    move-result-object p1

    return-object p1
.end method
