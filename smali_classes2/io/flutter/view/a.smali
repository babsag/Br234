.class public final synthetic Lio/flutter/view/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/flutter/util/Predicate;


# static fields
.field public static final synthetic a:Lio/flutter/view/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/flutter/view/a;

    invoke-direct {v0}, Lio/flutter/view/a;-><init>()V

    sput-object v0, Lio/flutter/view/a;->a:Lio/flutter/view/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lio/flutter/view/AccessibilityBridge$h;

    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge;->w(Lio/flutter/view/AccessibilityBridge$h;)Z

    move-result p1

    return p1
.end method
