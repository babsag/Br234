.class Landroidx/core/view/MenuCompat$a;
.super Ljava/lang/Object;
.source "MenuCompat.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1c
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/MenuCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method static a(Landroid/view/Menu;Z)V
    .locals 0
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .line 1
    invoke-interface {p0, p1}, Landroid/view/Menu;->setGroupDividerEnabled(Z)V

    return-void
.end method
