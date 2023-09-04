.class Lio/flutter/view/AccessibilityBridge$d;
.super Ljava/lang/Object;
.source "AccessibilityBridge.java"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/view/AccessibilityBridge;-><init>(Landroid/view/View;Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;Landroid/view/accessibility/AccessibilityManager;Landroid/content/ContentResolver;Lio/flutter/view/AccessibilityViewEmbedder;Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/accessibility/AccessibilityManager;

.field final synthetic b:Lio/flutter/view/AccessibilityBridge;


# direct methods
.method constructor <init>(Lio/flutter/view/AccessibilityBridge;Landroid/view/accessibility/AccessibilityManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/view/AccessibilityBridge$d;->b:Lio/flutter/view/AccessibilityBridge;

    iput-object p2, p0, Lio/flutter/view/AccessibilityBridge$d;->a:Landroid/view/accessibility/AccessibilityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchExplorationStateChanged(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$d;->b:Lio/flutter/view/AccessibilityBridge;

    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge;->i(Lio/flutter/view/AccessibilityBridge;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$d;->b:Lio/flutter/view/AccessibilityBridge;

    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge;->c(Lio/flutter/view/AccessibilityBridge;)I

    move-result v1

    sget-object v2, Lio/flutter/view/AccessibilityBridge$e;->ACCESSIBLE_NAVIGATION:Lio/flutter/view/AccessibilityBridge$e;

    iget v2, v2, Lio/flutter/view/AccessibilityBridge$e;->value:I

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Lio/flutter/view/AccessibilityBridge;->d(Lio/flutter/view/AccessibilityBridge;I)I

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$d;->b:Lio/flutter/view/AccessibilityBridge;

    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge;->f(Lio/flutter/view/AccessibilityBridge;)V

    .line 4
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$d;->b:Lio/flutter/view/AccessibilityBridge;

    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge;->c(Lio/flutter/view/AccessibilityBridge;)I

    move-result v1

    sget-object v2, Lio/flutter/view/AccessibilityBridge$e;->ACCESSIBLE_NAVIGATION:Lio/flutter/view/AccessibilityBridge$e;

    iget v2, v2, Lio/flutter/view/AccessibilityBridge$e;->value:I

    not-int v2, v2

    and-int/2addr v1, v2

    invoke-static {v0, v1}, Lio/flutter/view/AccessibilityBridge;->d(Lio/flutter/view/AccessibilityBridge;I)I

    .line 5
    :goto_0
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$d;->b:Lio/flutter/view/AccessibilityBridge;

    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge;->e(Lio/flutter/view/AccessibilityBridge;)V

    .line 6
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$d;->b:Lio/flutter/view/AccessibilityBridge;

    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge;->n(Lio/flutter/view/AccessibilityBridge;)Lio/flutter/view/AccessibilityBridge$OnAccessibilityChangeListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$d;->b:Lio/flutter/view/AccessibilityBridge;

    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge;->n(Lio/flutter/view/AccessibilityBridge;)Lio/flutter/view/AccessibilityBridge$OnAccessibilityChangeListener;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge$d;->a:Landroid/view/accessibility/AccessibilityManager;

    .line 8
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    .line 9
    invoke-interface {v0, v1, p1}, Lio/flutter/view/AccessibilityBridge$OnAccessibilityChangeListener;->onAccessibilityChanged(ZZ)V

    :cond_2
    return-void
.end method
