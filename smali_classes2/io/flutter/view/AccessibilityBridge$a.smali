.class Lio/flutter/view/AccessibilityBridge$a;
.super Ljava/lang/Object;
.source "AccessibilityBridge.java"

# interfaces
.implements Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel$AccessibilityMessageHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/view/AccessibilityBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/view/AccessibilityBridge;


# direct methods
.method constructor <init>(Lio/flutter/view/AccessibilityBridge;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/view/AccessibilityBridge$a;->a:Lio/flutter/view/AccessibilityBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public announce(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$a;->a:Lio/flutter/view/AccessibilityBridge;

    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge;->a(Lio/flutter/view/AccessibilityBridge;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onLongPress(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$a;->a:Lio/flutter/view/AccessibilityBridge;

    const/4 v1, 0x2

    invoke-static {v0, p1, v1}, Lio/flutter/view/AccessibilityBridge;->b(Lio/flutter/view/AccessibilityBridge;II)V

    return-void
.end method

.method public onTap(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$a;->a:Lio/flutter/view/AccessibilityBridge;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lio/flutter/view/AccessibilityBridge;->b(Lio/flutter/view/AccessibilityBridge;II)V

    return-void
.end method

.method public onTooltip(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$a;->a:Lio/flutter/view/AccessibilityBridge;

    const/4 v1, 0x0

    const/16 v2, 0x20

    .line 2
    invoke-static {v0, v1, v2}, Lio/flutter/view/AccessibilityBridge;->g(Lio/flutter/view/AccessibilityBridge;II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object p1, p0, Lio/flutter/view/AccessibilityBridge$a;->a:Lio/flutter/view/AccessibilityBridge;

    invoke-static {p1, v0}, Lio/flutter/view/AccessibilityBridge;->h(Lio/flutter/view/AccessibilityBridge;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public updateCustomAccessibilityActions(Ljava/nio/ByteBuffer;[Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 2
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$a;->a:Lio/flutter/view/AccessibilityBridge;

    invoke-virtual {v0, p1, p2}, Lio/flutter/view/AccessibilityBridge;->G(Ljava/nio/ByteBuffer;[Ljava/lang/String;)V

    return-void
.end method

.method public updateSemantics(Ljava/nio/ByteBuffer;[Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 2
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$a;->a:Lio/flutter/view/AccessibilityBridge;

    invoke-virtual {v0, p1, p2}, Lio/flutter/view/AccessibilityBridge;->H(Ljava/nio/ByteBuffer;[Ljava/lang/String;)V

    return-void
.end method
