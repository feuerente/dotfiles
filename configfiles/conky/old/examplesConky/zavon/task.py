from __future__ import print_function
from googleapiclient.discovery import build
from httplib2 import Http
from oauth2client import file, client, tools

# If modifying these scopes, delete the file token.json.
SCOPES = 'https://www.googleapis.com/auth/tasks.readonly'

def main():
    """Shows basic usage of the Tasks API.
    Prints the title and ID of the first 10 task lists.
    """
    # The file token.json stores the user's access and refresh tokens, and is
    # created automatically when the authorization flow completes for the first
    # time.
    store = file.Storage('~/dev/scripts/python/token.json')
    creds = store.get()
    if not creds or creds.invalid:
        flow = client.flow_from_clientsecrets('~/dev/scripts/python/credentials.json', SCOPES)
        creds = tools.run_flow(flow, store)
    service = build('tasks', 'v1', http=creds.authorize(Http()))

    # Call the Tasks API
    results = service.tasks().list(tasklist='@default').execute()
    items = results.get('items', [])

    if not items:
        print('No task lists found.')
    else:
        print('Task lists:')
        for item in items:
            print((item['title']))

if __name__ == '__main__':
    main()
    
