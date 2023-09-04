.class public Lcom/ca/mas/core/EventDispatcher;
.super Ljava/util/Observable;
.source "EventDispatcher.java"


# static fields
.field public static final AFTER_DEREGISTER:Lcom/ca/mas/core/EventDispatcher;

.field public static final AFTER_GATEWAY_SWITCH:Lcom/ca/mas/core/EventDispatcher;

.field public static final BEFORE_DEREGISTER:Lcom/ca/mas/core/EventDispatcher;

.field public static final BEFORE_GATEWAY_SWITCH:Lcom/ca/mas/core/EventDispatcher;

.field public static final LOGOUT:Lcom/ca/mas/core/EventDispatcher;

.field public static final RESET_LOCALLY:Lcom/ca/mas/core/EventDispatcher;

.field public static final STARTED:Lcom/ca/mas/core/EventDispatcher;

.field public static final STOP:Lcom/ca/mas/core/EventDispatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/ca/mas/core/EventDispatcher;

    invoke-direct {v0}, Lcom/ca/mas/core/EventDispatcher;-><init>()V

    sput-object v0, Lcom/ca/mas/core/EventDispatcher;->STARTED:Lcom/ca/mas/core/EventDispatcher;

    .line 2
    new-instance v0, Lcom/ca/mas/core/EventDispatcher;

    invoke-direct {v0}, Lcom/ca/mas/core/EventDispatcher;-><init>()V

    sput-object v0, Lcom/ca/mas/core/EventDispatcher;->STOP:Lcom/ca/mas/core/EventDispatcher;

    .line 3
    new-instance v0, Lcom/ca/mas/core/EventDispatcher;

    invoke-direct {v0}, Lcom/ca/mas/core/EventDispatcher;-><init>()V

    sput-object v0, Lcom/ca/mas/core/EventDispatcher;->LOGOUT:Lcom/ca/mas/core/EventDispatcher;

    .line 4
    new-instance v0, Lcom/ca/mas/core/EventDispatcher;

    invoke-direct {v0}, Lcom/ca/mas/core/EventDispatcher;-><init>()V

    sput-object v0, Lcom/ca/mas/core/EventDispatcher;->BEFORE_DEREGISTER:Lcom/ca/mas/core/EventDispatcher;

    .line 5
    new-instance v0, Lcom/ca/mas/core/EventDispatcher;

    invoke-direct {v0}, Lcom/ca/mas/core/EventDispatcher;-><init>()V

    sput-object v0, Lcom/ca/mas/core/EventDispatcher;->AFTER_DEREGISTER:Lcom/ca/mas/core/EventDispatcher;

    .line 6
    new-instance v0, Lcom/ca/mas/core/EventDispatcher;

    invoke-direct {v0}, Lcom/ca/mas/core/EventDispatcher;-><init>()V

    sput-object v0, Lcom/ca/mas/core/EventDispatcher;->RESET_LOCALLY:Lcom/ca/mas/core/EventDispatcher;

    .line 7
    new-instance v0, Lcom/ca/mas/core/EventDispatcher;

    invoke-direct {v0}, Lcom/ca/mas/core/EventDispatcher;-><init>()V

    sput-object v0, Lcom/ca/mas/core/EventDispatcher;->BEFORE_GATEWAY_SWITCH:Lcom/ca/mas/core/EventDispatcher;

    .line 8
    new-instance v0, Lcom/ca/mas/core/EventDispatcher;

    invoke-direct {v0}, Lcom/ca/mas/core/EventDispatcher;-><init>()V

    sput-object v0, Lcom/ca/mas/core/EventDispatcher;->AFTER_GATEWAY_SWITCH:Lcom/ca/mas/core/EventDispatcher;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized hasChanged()Z
    .locals 1

    monitor-enter p0

    .line 1
    monitor-exit p0

    const/4 v0, 0x1

    return v0
.end method
