.class public final enum Lokhttp3/mockwebserver/SocketPolicy;
.super Ljava/lang/Enum;
.source "SocketPolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lokhttp3/mockwebserver/SocketPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lokhttp3/mockwebserver/SocketPolicy;

.field public static final enum CONTINUE_ALWAYS:Lokhttp3/mockwebserver/SocketPolicy;

.field public static final enum DISCONNECT_AFTER_REQUEST:Lokhttp3/mockwebserver/SocketPolicy;

.field public static final enum DISCONNECT_AT_END:Lokhttp3/mockwebserver/SocketPolicy;

.field public static final enum DISCONNECT_AT_START:Lokhttp3/mockwebserver/SocketPolicy;

.field public static final enum DISCONNECT_DURING_REQUEST_BODY:Lokhttp3/mockwebserver/SocketPolicy;

.field public static final enum DISCONNECT_DURING_RESPONSE_BODY:Lokhttp3/mockwebserver/SocketPolicy;

.field public static final enum EXPECT_CONTINUE:Lokhttp3/mockwebserver/SocketPolicy;

.field public static final enum FAIL_HANDSHAKE:Lokhttp3/mockwebserver/SocketPolicy;

.field public static final enum KEEP_OPEN:Lokhttp3/mockwebserver/SocketPolicy;

.field public static final enum NO_RESPONSE:Lokhttp3/mockwebserver/SocketPolicy;

.field public static final enum RESET_STREAM_AT_START:Lokhttp3/mockwebserver/SocketPolicy;

.field public static final enum SHUTDOWN_INPUT_AT_END:Lokhttp3/mockwebserver/SocketPolicy;

.field public static final enum SHUTDOWN_OUTPUT_AT_END:Lokhttp3/mockwebserver/SocketPolicy;

.field public static final enum STALL_SOCKET_AT_START:Lokhttp3/mockwebserver/SocketPolicy;

.field public static final enum UPGRADE_TO_SSL_AT_END:Lokhttp3/mockwebserver/SocketPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 1
    new-instance v0, Lokhttp3/mockwebserver/SocketPolicy;

    const-string v1, "KEEP_OPEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lokhttp3/mockwebserver/SocketPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lokhttp3/mockwebserver/SocketPolicy;->KEEP_OPEN:Lokhttp3/mockwebserver/SocketPolicy;

    .line 2
    new-instance v1, Lokhttp3/mockwebserver/SocketPolicy;

    const-string v3, "DISCONNECT_AT_END"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lokhttp3/mockwebserver/SocketPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lokhttp3/mockwebserver/SocketPolicy;->DISCONNECT_AT_END:Lokhttp3/mockwebserver/SocketPolicy;

    .line 3
    new-instance v3, Lokhttp3/mockwebserver/SocketPolicy;

    const-string v5, "UPGRADE_TO_SSL_AT_END"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lokhttp3/mockwebserver/SocketPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lokhttp3/mockwebserver/SocketPolicy;->UPGRADE_TO_SSL_AT_END:Lokhttp3/mockwebserver/SocketPolicy;

    .line 4
    new-instance v5, Lokhttp3/mockwebserver/SocketPolicy;

    const-string v7, "DISCONNECT_AT_START"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lokhttp3/mockwebserver/SocketPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lokhttp3/mockwebserver/SocketPolicy;->DISCONNECT_AT_START:Lokhttp3/mockwebserver/SocketPolicy;

    .line 5
    new-instance v7, Lokhttp3/mockwebserver/SocketPolicy;

    const-string v9, "DISCONNECT_AFTER_REQUEST"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lokhttp3/mockwebserver/SocketPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lokhttp3/mockwebserver/SocketPolicy;->DISCONNECT_AFTER_REQUEST:Lokhttp3/mockwebserver/SocketPolicy;

    .line 6
    new-instance v9, Lokhttp3/mockwebserver/SocketPolicy;

    const-string v11, "DISCONNECT_DURING_REQUEST_BODY"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lokhttp3/mockwebserver/SocketPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lokhttp3/mockwebserver/SocketPolicy;->DISCONNECT_DURING_REQUEST_BODY:Lokhttp3/mockwebserver/SocketPolicy;

    .line 7
    new-instance v11, Lokhttp3/mockwebserver/SocketPolicy;

    const-string v13, "DISCONNECT_DURING_RESPONSE_BODY"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lokhttp3/mockwebserver/SocketPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lokhttp3/mockwebserver/SocketPolicy;->DISCONNECT_DURING_RESPONSE_BODY:Lokhttp3/mockwebserver/SocketPolicy;

    .line 8
    new-instance v13, Lokhttp3/mockwebserver/SocketPolicy;

    const-string v15, "FAIL_HANDSHAKE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lokhttp3/mockwebserver/SocketPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lokhttp3/mockwebserver/SocketPolicy;->FAIL_HANDSHAKE:Lokhttp3/mockwebserver/SocketPolicy;

    .line 9
    new-instance v15, Lokhttp3/mockwebserver/SocketPolicy;

    const-string v14, "SHUTDOWN_INPUT_AT_END"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lokhttp3/mockwebserver/SocketPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lokhttp3/mockwebserver/SocketPolicy;->SHUTDOWN_INPUT_AT_END:Lokhttp3/mockwebserver/SocketPolicy;

    .line 10
    new-instance v14, Lokhttp3/mockwebserver/SocketPolicy;

    const-string v12, "SHUTDOWN_OUTPUT_AT_END"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lokhttp3/mockwebserver/SocketPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lokhttp3/mockwebserver/SocketPolicy;->SHUTDOWN_OUTPUT_AT_END:Lokhttp3/mockwebserver/SocketPolicy;

    .line 11
    new-instance v12, Lokhttp3/mockwebserver/SocketPolicy;

    const-string v10, "STALL_SOCKET_AT_START"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lokhttp3/mockwebserver/SocketPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lokhttp3/mockwebserver/SocketPolicy;->STALL_SOCKET_AT_START:Lokhttp3/mockwebserver/SocketPolicy;

    .line 12
    new-instance v10, Lokhttp3/mockwebserver/SocketPolicy;

    const-string v8, "NO_RESPONSE"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lokhttp3/mockwebserver/SocketPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lokhttp3/mockwebserver/SocketPolicy;->NO_RESPONSE:Lokhttp3/mockwebserver/SocketPolicy;

    .line 13
    new-instance v8, Lokhttp3/mockwebserver/SocketPolicy;

    const-string v6, "RESET_STREAM_AT_START"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lokhttp3/mockwebserver/SocketPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lokhttp3/mockwebserver/SocketPolicy;->RESET_STREAM_AT_START:Lokhttp3/mockwebserver/SocketPolicy;

    .line 14
    new-instance v6, Lokhttp3/mockwebserver/SocketPolicy;

    const-string v4, "EXPECT_CONTINUE"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lokhttp3/mockwebserver/SocketPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lokhttp3/mockwebserver/SocketPolicy;->EXPECT_CONTINUE:Lokhttp3/mockwebserver/SocketPolicy;

    .line 15
    new-instance v4, Lokhttp3/mockwebserver/SocketPolicy;

    const-string v2, "CONTINUE_ALWAYS"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lokhttp3/mockwebserver/SocketPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lokhttp3/mockwebserver/SocketPolicy;->CONTINUE_ALWAYS:Lokhttp3/mockwebserver/SocketPolicy;

    const/16 v2, 0xf

    new-array v2, v2, [Lokhttp3/mockwebserver/SocketPolicy;

    const/16 v16, 0x0

    aput-object v0, v2, v16

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v8, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    aput-object v4, v2, v6

    .line 16
    sput-object v2, Lokhttp3/mockwebserver/SocketPolicy;->$VALUES:[Lokhttp3/mockwebserver/SocketPolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lokhttp3/mockwebserver/SocketPolicy;
    .locals 1

    .line 1
    const-class v0, Lokhttp3/mockwebserver/SocketPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lokhttp3/mockwebserver/SocketPolicy;

    return-object p0
.end method

.method public static values()[Lokhttp3/mockwebserver/SocketPolicy;
    .locals 1

    .line 1
    sget-object v0, Lokhttp3/mockwebserver/SocketPolicy;->$VALUES:[Lokhttp3/mockwebserver/SocketPolicy;

    invoke-virtual {v0}, [Lokhttp3/mockwebserver/SocketPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lokhttp3/mockwebserver/SocketPolicy;

    return-object v0
.end method
