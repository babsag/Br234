.class public final Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;
.super Ljava/lang/Object;
.source "FlutterApplicationInfo.java"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:Ljava/lang/String;

.field final e:Ljava/lang/String;

.field final f:Ljava/lang/String;

.field final g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const-string p1, "libapp.so"

    .line 2
    :cond_0
    iput-object p1, p0, Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;->a:Ljava/lang/String;

    if-nez p2, :cond_1

    const-string p2, "vm_snapshot_data"

    .line 3
    :cond_1
    iput-object p2, p0, Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;->b:Ljava/lang/String;

    if-nez p3, :cond_2

    const-string p3, "isolate_snapshot_data"

    .line 4
    :cond_2
    iput-object p3, p0, Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;->c:Ljava/lang/String;

    if-nez p4, :cond_3

    const-string p4, "flutter_assets"

    .line 5
    :cond_3
    iput-object p4, p0, Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;->d:Ljava/lang/String;

    .line 6
    iput-object p6, p0, Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;->f:Ljava/lang/String;

    if-nez p5, :cond_4

    const-string p5, ""

    .line 7
    :cond_4
    iput-object p5, p0, Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;->e:Ljava/lang/String;

    .line 8
    iput-boolean p7, p0, Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;->g:Z

    return-void
.end method
