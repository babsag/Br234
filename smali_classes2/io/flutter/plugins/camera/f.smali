.class public final synthetic Lio/flutter/plugins/camera/f;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/flutter/plugins/camera/h$c;


# instance fields
.field public final synthetic a:Lio/flutter/plugins/camera/j;

.field public final synthetic b:Lio/flutter/plugin/common/MethodCall;

.field public final synthetic c:Lio/flutter/plugin/common/MethodChannel$Result;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugins/camera/j;Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugins/camera/f;->a:Lio/flutter/plugins/camera/j;

    iput-object p2, p0, Lio/flutter/plugins/camera/f;->b:Lio/flutter/plugin/common/MethodCall;

    iput-object p3, p0, Lio/flutter/plugins/camera/f;->c:Lio/flutter/plugin/common/MethodChannel$Result;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lio/flutter/plugins/camera/f;->a:Lio/flutter/plugins/camera/j;

    iget-object v1, p0, Lio/flutter/plugins/camera/f;->b:Lio/flutter/plugin/common/MethodCall;

    iget-object v2, p0, Lio/flutter/plugins/camera/f;->c:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-virtual {v0, v1, v2, p1, p2}, Lio/flutter/plugins/camera/j;->d(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
