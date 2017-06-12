////////////////////////////////////////////////////////////////////////////
//
//Implementation module: MSG  Message handlers
//
//Generated file:        Message.CPP
//
//Module identification letters: MSG
//Module identification number:  0180
//
//Repository name:      Message access, formatting and handling
//Repository file name: Z:\TALISMAN\TEST\BSW\MESSAGE.BSW
//
//Owning organization:    LES/DI/PUC-Rio
//Project:                Talisman
//List of authors
//   Id      Name
//   avs - Arndt von Staa
//
//Software base change control
//    Version  Date         Authors      Description 
//    1     18/set/2000  avs          Development begun
//
////////////////////////////////////////////////////////////////////////////

   #include <string.h>
   #include <stdio.h>
   #include <ctype.h>

   #define  _Message_OWN
   #include "xMessage.HPP"
   #undef   _Message_OWN

   #ifdef _DEBUG
      #include "counters.hpp"
      #include "dynspac.hpp"
   #endif

   #ifdef _TRACE
      #include "tracer.hpp"
   #endif

   #include "Message.HPP"
   #include "exceptn.hpp"
   #include "xmsgbin.hpp"
   #include "str_msg.inc"

//==========================================================================
//----- Encapsulated data declarations -----
//==========================================================================

   static const int   INX_LAST_ITEM    = XMSG_DIM_ITEMS - 1 ;

   static const int   MAX_REPLACEMENTS = 30  ;
             // limits the number of field replacements to avoid recursive loops

   static const char  FIELD_ESCAPE   = '%' ;
   static       char  ESCAPE_CHAR[ ] = "%" ;
   static       char  ESCAPE_SEQ[  ] = "%%" ;


//==========================================================================
//----- Class implementation -----
//==========================================================================

////////////////////////////////////////////////////////////////////////////
// 
// Implementation of class: MSGI Message item
////////////////////////////////////////////////////////////////////////////

//==========================================================================
//----- Public method implementations -----
//==========================================================================

// Class: MSGI Message item

////////////////////////////////////////////////////////////////////////////
// 
// Method: MSGI Message item destructor

   XMSG_MessageItem :: ~XMSG_MessageItem( )
   {
      CNT_Count( "MSGI Message item destructor" ) ;
   } // End of function: MSGI Message item destructor

//==========================================================================
//----- Protected method implementations -----
//==========================================================================

// Class: MSGI Message item

////////////////////////////////////////////////////////////////////////////
// 
// Method: MSGI Message item constructor

   XMSG_MessageItem :: XMSG_MessageItem( )
   {
      CNT_Count( "MSGI Message item constructor" ) ;
   } // End of function: MSGI Message item constructor

//--- End of class: MSGI Message item


//==========================================================================
//----- Class implementation -----
//==========================================================================

////////////////////////////////////////////////////////////////////////////
// 
// Implementation of class: MSG  Message
////////////////////////////////////////////////////////////////////////////

//==========================================================================
//----- Public method implementations -----
//==========================================================================

// Class: MSG  Message

////////////////////////////////////////////////////////////////////////////
// 
// Method: MSG  !Message constructor

   XMSG_Message :: XMSG_Message( const int idMessageParm )
   {
      CNT_Count( "MSG  !Message constructor" ) ;

      idMessage = idMessageParm ;

      for( int i = 0 ; i < XMSG_DIM_ITEMS ; i++ )
      {
        vtItems[ i ] = NULL ;
      } /* for */

   } // End of function: MSG  !Message constructor

////////////////////////////////////////////////////////////////////////////
// 
// Method: MSG  !Message destructor

   XMSG_Message :: ~XMSG_Message( )
   {
      CNT_Count( "MSG  !Message destructor" ) ;

      for ( int i = 0 ; i < XMSG_DIM_ITEMS ; i++ )
      {
         delete vtItems[ i ] ;
      } /* for */

   } // End of function: MSG  !Message destructor

////////////////////////////////////////////////////////////////////////////
// 
// Method: MSG  !Get message id

   int XMSG_Message :: GetMessageId( )
   {
      CNT_Count( "MSG  !Get message id" ) ;

      return idMessage ;

   } // End of function: MSG  !Get message id

////////////////////////////////////////////////////////////////////////////
// 
// Method: MSG  !Replace message id

   void XMSG_Message :: ReplaceMessageId( const long idMessageParm )
   {
      CNT_Count( "MSG  !Replace message id" ) ;

      int idMessage = idMessageParm ;
      idMessage ++ ;
   } // End of function: MSG  !Replace message id

////////////////////////////////////////////////////////////////////////////
// 
// Method: MSG  !Add item

   void XMSG_Message :: AddItem( const int  index        ,
                                XMSG_MessageItem * pItem  )
   {
      CNT_Count( "MSG  !Add item" ) ;

      if ( ( 0 <= index ) && ( index < XMSG_DIM_ITEMS ))
      {
         delete vtItems[ index ] ;

         vtItems[ index ] = pItem ;
      } else
      {
         delete pItem ;
         EXC_ENFORCE( ( 0 <= index ) && ( index < XMSG_DIM_ITEMS )) ;
      } /* if */

   } // End of function: MSG  !Add item

////////////////////////////////////////////////////////////////////////////
// 
// Method: MSG  !Get message item

   XMSG_MessageItem * XMSG_Message ::
             GetItem( int inxItem )
   {
      CNT_Count( "MSG  !Get message item" ) ;

      if ( ( inxItem < 0 )
        || ( inxItem >= XMSG_DIM_ITEMS ))
      {
         return NULL ;
      } /* if */

      return vtItems[ inxItem ] ;

   } // End of function: MSG  !Get message item

////////////////////////////////////////////////////////////////////////////
// 
// Method: MSG  !Assemble the message string

   STR_String * XMSG_Message :: AssembleMessage( )
   {
      CNT_Count( "MSG  !Assemble the message string" ) ;

      // Assemble with existing message string

         CNT_Count( "Assemble with existing message string" ) ;
         STR_String * messageString = new STR_String( idMessage ) ;

         if ( memcmp( STR_ID_NOT_FOUND , messageString->GetString( ) ,
                      strlen( STR_ID_NOT_FOUND )) != 0  )
         {
            DoAssemble( messageString ) ;

            return messageString ;
         } /* end if */

         delete messageString ;
         messageString = NULL ;

      // Assemble with error message string id

         CNT_Count( "Assemble with error message string id" ) ;

         // Assemble with error message string

            CNT_Count( "Assemble with error message string" ) ;
            messageString = new STR_String( MSG_ErrorIdNotFound ) ;

            if ( vtItems[ INX_LAST_ITEM ] != NULL )
            {
               CNT_Count( "Assemble with error message string - 01" ) ;
               delete vtItems[ INX_LAST_ITEM ] ;
            } /* if */
            vtItems[ INX_LAST_ITEM ] = new XMSG_ItemInteger( idMessage & STR_ID ) ;

            DoAssemble( messageString ) ;

         // Append items to nonexisting message

            CNT_Count( "Append items to nonexisting message" ) ;

            char ASCIINum[ BCD_DIM_MAX_ASCII ] ;

            STR_String Separator(    MSG_Separator    ) ;
            STR_String SeparatorEnd( MSG_SeparatorEnd ) ;

            for( int i = 0 ; i < XMSG_DIM_ITEMS - 1 ; i ++ )
            {
               CNT_Count( "Assemble with error message string - 02" ) ;
               if ( vtItems[ i ] != NULL )
               {
                  CNT_Count( "Assemble with error message string - 03" ) ;
                  messageString->Append( Separator ) ;

                  sprintf( ASCIINum , "%d" , i ) ;
                  messageString->Append( ASCIINum ) ;

                  messageString->Append( SeparatorEnd ) ;

                  STR_String * pItemStr = vtItems[ i ]->ToString() ;
                  messageString->Append( pItemStr ) ;
                  delete pItemStr ;

               } /* if */
            } /* for */

            return messageString ;

   } // End of function: MSG  !Assemble the message string

//==========================================================================
//----- Private method implementations -----
//==========================================================================

// Class: MSG  Message

////////////////////////////////////////////////////////////////////////////
// 
//  Method: MSG  $Do assemble message
// 
////////////////////////////////////////////////////////////////////////////

   void XMSG_Message ::
             DoAssemble( STR_String * messageString )
   {
      CNT_Count( "MSG  $Do assemble message" ) ;

      // OBS: Implementing a search function instead of using memchr to avoid
      //      pointer arithmetic.

      char * msgString = const_cast< char * >( messageString->GetString( )) ;
      int strLength    = messageString->GetLength() ;

      int messageId         = -1 ;
      int inxItem           = -1 ;

      int countReplacements = 0 ;
      int inxChar           = 0 ;

      while ( inxChar < strLength ) {
         CNT_Count( "MSG  $Do assemble message - 01" ) ;

      // Handle a field
      // OBS: This escape character is strongly embedded in all messages.
      //      A new escape character choice would entail a major revision
      //      of all modules.

         if ( msgString[ inxChar ] == FIELD_ESCAPE )
         {
             CNT_Count( "Handle a field" ) ;

            int countChar = 1 ;

            messageId     = -1 ;

            // Handle field refering to item

               if ( isdigit( msgString[ inxChar + 1 ] ))
               {
                  CNT_Count( "Handle field refering to item" ) ;

                  // Get field number
      //          AE: strings are zero terminated
      //              the msgString points to the most up to date version of messageString

                     CNT_Count( "Get field number" ) ;

                     countChar   = 1 ;
                     inxItem     = 1 ;

                     while ( isdigit( msgString[ inxChar + countChar ] ))
                     {
                        CNT_Count( "MSG  $Do assemble message - 02" ) ;
                        inxItem = inxItem * 10 + ( msgString[ inxChar + countChar ] - '0' ) ;
                        countChar ++ ;
                     } /* while */

                     if ( msgString[ inxChar + countChar ] == '.' )
                     {
                        CNT_Count( "MSG  $Do assemble message - 03" ) ;
                        countChar ++ ;
                     } /* if */

                  // Handle too many replacements - avoids recursive rplacements

                     countReplacements ++ ;

                     if ( countReplacements > MAX_REPLACEMENTS )
                     {
                        CNT_Count( "Handle too many replacements - avoids recursive rplacements" ) ;

                        messageId =  MSG_ErrorIllegalIndex ;

                     } // end selection: Handle too many replacements - avoids recursive rplacements

                  // Replace field by item string

                     else if ( ( 0 <= inxItem )
                          && ( inxItem < XMSG_DIM_ITEMS ))
                     {
                        CNT_Count( "Replace field by item string" ) ;

                        if ( vtItems[ inxItem ] != NULL )
                        {
                           CNT_Count( "MSG  $Do assemble message - 04" ) ;
                           STR_String * pStr = NULL ;

                           pStr = vtItems[ inxItem ]->ToString( ) ;
                           messageString->ReplaceSubstring( inxChar , countChar , pStr ) ;

                           delete pStr ;

                           inxChar -- ;
                              // make sure to start interpreting at first char of inserted item

                        } else
                        {
                           CNT_Count( "MSG  $Do assemble message - 05" ) ;
                           messageId = MSG_ErrorNoData ;
                        } /* if */

                     } // end selection: Replace field by item string

                  // Handle illegal field index

                     else
                     {
                        CNT_Count( "Handle illegal field index" ) ;

                        messageId = MSG_ErrorIllegalIndex ;

                     } // end selection: Handle illegal field index

               } // end selection: Handle field refering to item

            // Handle % character

               else if ( msgString[ inxChar + 1 ] == FIELD_ESCAPE )
               {
                  CNT_Count( "Handle % character" ) ;

                  STR_String * pString = new STR_String( ESCAPE_CHAR ) ;
                  messageString->ReplaceSubstring( inxChar , 2 , pString ) ;
                  delete pString ;

                  inxChar++ ;

               } // end selection: Handle % character

            // Handle unknown field code

               else
               {
                  CNT_Count( "Handle unknown field code" ) ;

                  messageId = MSG_ErrorFieldCode ;
                  inxItem   = msgString[ inxChar + 1 ] ;
                  countChar = 1 ;

               } // end selection: Handle unknown field code

            // Handle illegal field syntax

               if ( messageId > 1 )
               {
                  CNT_Count( "Handle illegal field syntax" ) ;

                  static const int DIM_ITEM = 50 ;
                  char itemStr[ DIM_ITEM ] ;

                  sprintf( itemStr , STR_GetStringAddress( messageId ) , inxItem ) ;
                  STR_String * pString = new STR_String( itemStr ) ;

                  messageString->ReplaceSubstring( inxChar , countChar , pString ) ;
                  delete pString ;

                  if ( messageId == MSG_TooManyFields  )
                  {
                     CNT_Count( "MSG  $Do assemble message - 06" ) ;
                     break ;
                  } /* if */

               } // end selection: Handle illegal field syntax

            // Get the modified string

               CNT_Count( "Get the modified string" ) ;
               msgString = const_cast< char * >( messageString->GetString( )) ;
               strLength = messageString->GetLength( ) ;

         } // end selection: Handle a field

      // Next char
      // AE: if item inserted  inxChar is the index of the character preceding
      //        the inserted item, giving it a chance to be interpreted too
      //     if converting %% to %, inxChar refers to the converted character %
      //        assuring that %%%% converts to %% and %%%1 to %item1

         CNT_Count( "Next char" ) ;
         inxChar ++ ;

      } // end repetition: Root of MSG  $Do assemble message

   } // End of function: MSG  $Do assemble message

//--- End of class: MSG  Message

////// End of implementation module: MSG  Message handlers ////

